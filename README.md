# dsh-mobile（安卓深度改造版）

上游 [thness/dsh-mobile](https://github.com/thness/dsh-mobile) 的分叉：把
DeepSeek Harness（dsh）完整装进安卓平板/手机的工程化版本——**dsh 0.2.1-alpha.2
（与官方 deepseek-ai/deepseek-harness master 对齐）+ 七项安卓兼容补丁 + 无缝启动链
+ 内存优化 + 无损升级管线**。

> 本分叉的改造基于上游 v0.10.1 APK 的 apktool 解码树（`android-port/dsh-mobile-src/`，
> smali 层），上游的 Kotlin 源码保留在原位供对照回移。发行包从 smali 树构建。

## 本分叉新增了什么

### 一、dsh 引擎侧：7 项安卓兼容补丁（`android-port/patches/`）

| # | 问题 | 修复 |
|---|---|---|
| 1 | node-pty 无安卓预编译 | NDK r27 编译 pty.node + spawn-helper（产物入库 `prebuilt/`） |
| 2 | sharp 无安卓版 | `@img/sharp-wasm32`（版本随 sharp）+ `@emnapi/runtime` |
| 3 | node-addon-system 拒绝 android 平台 | NDK 编译 system.node + flock.js 加 android 分支 |
| 4 | FBE 禁硬链接，`fs.link()` EACCES | link→rename（persistence-jsonl 4 处 + attachment-local 2 处；**defaultFileSystem 必须同时补 rename 方法映射，否则静默失败**） |
| 5 | 0.2.0 新增 node-addon-require-builtin 无安卓原生件 | 纯 JS 垫片（引擎带 `--expose-internals`，internal 模块可直取） |
| 6 | token 认证流程 | WebView 直载 token URL（303 换 30 天 cookie），一次性 token 不被旁路消耗 |
| 7 | 就绪探测 | EngineProbe 放宽为任意 HTTP 响应 |

`patches/apply-dsh-patches.sh` 一键重打（升级 dsh 版本时执行；锚点 assert 失败即报错，
不会静默跳过）。0.2.0-rc.2 与 0.2.1-alpha.2 均全锚点命中。

### 二、应用侧：启动视觉链与可靠性（smali 改造）

- **启动链（零闪屏）**：黑窗 → 鲸鱼+转圈（onCreate 即亮，顶到页面画完）→
  `onPageFinished → revealWeb()` 唯一交接点；`showWeb` 不提前收引导层
- **WebLaunch.java**（`weblaunch-java/`，javac+d8+apktool 反汇编成 smali）：
  后台等 127.0.0.1:3080 真监听 + 识别**本次启动的新 token 行**才加载——
  根治"旧 token 提前加载 → ERR_CONNECTION_REFUSED 错误页闪屏"
- WebView `setMediaPlaybackRequiresUserGesture(false)`：插件视频可默认有声
- 重试自愈：onReceivedError → 鲸鱼引导 + 封顶退避（2.5s×10 → 15s）
- KeepAliveService 前台服务 + moveTaskToBack 后台驻留

### 三、引擎内存优化（`memopt.js`）

`NODE_OPTIONS=--max-old-space-size=512 --expose-gc --require=…/memopt.js`：
每分钟 RSS 巡检（软限 360MB 触发 full GC）+ 30 分钟兜底 GC。实测引擎冷启 43MB，
负载后稳定 ~220MB 总占用。

### 四、构建与分发管线

- `build-apk.sh`：apktool → zipalign → apksigner 一键出包
- `android-upgrade.sh`：**无损升级**（install -r + 仅清 files/usr 触发重解压，
  会话/设置/cookie 全保留；含 MIUI 安装弹窗自动确认）
- 快照重打包必须 `COPYFILE_DISABLE=1 tar cJf`（macOS 会把 npm 文件 xattr 塞成
  `._*` AppleDouble 条目，安卓解压后污染数万垃圾文件导致插件页报错）

## 从零构建

```sh
# 1. dsh npm 树（交叉安装，版本 = npm dist-tags.alpha 或 latest）
mkdir stage && cd stage && echo '{"name":"s","private":true}' > package.json
npm install @deepseek-ai/dsh@0.2.1-alpha.2 --ignore-scripts --omit=dev --os=android --cpu=arm64

# 2. 打全部引擎侧补丁（传绝对路径）
sh android-port/patches/apply-dsh-patches.sh "$PWD/stage"

# 3. 组快照（保留 memopt.js）
mkdir -p snap/usr/lib && cp -R stage/node_modules snap/usr/lib/
cp android-port/memopt.js snap/usr/lib/
cd snap && COPYFILE_DISABLE=1 tar cJf ../snapshot.tar.xz usr
cp ../snapshot.tar.xz ../android-port/dsh-mobile-src/assets/

# 4. 出包
sh android-port/build-apk.sh
```

## 升级 dsh 版本

改步骤 1 的版本号重跑 1-4，然后 `android-upgrade.sh` 无损上机。

## 已知边界

- 仅 arm64（`prebuilt/` 原生件）；x86 模拟器不可用
- 换签名密钥 = 已装用户必须卸载重装（数据丢失）
- MIUI 等系统建议：最近任务锁卡片 + 允许后台联网

## 致谢

- 上游 [thness/dsh-mobile](https://github.com/thness/dsh-mobile)（MIT, kelai141）
- [deepseek-ai/deepseek-harness](https://github.com/deepseek-ai/deepseek-harness)
