# DeepSeek Harness 安卓任务接手

2026-10-24，接自 ZCode 会话 `sess_97b997aa-4256-4e7d-981f-861fcbdb04fa`。

原会话标题：我想要一个安卓原生的使用原生 ui 的保留全部功能在小米 pad 上能运行的版本，优先横屏，能适应横竖屏的版本。

最后一条实际用户要求：感觉你这么多轮没变化，主要是竖屏时的设置界面，但整体希望优化。

## 本次处理

在 Redmi K30 5G 上复现：392 CSS px 的视口仍显示桌面设置双栏，188px 导航挤压正文，出现文字逐字竖排。

仅在宽度不超过 600px 时，设置页改成全屏、横向滚动导航、独立滚动正文。普通按钮扩到至少 44px，字号箭头改为可直接点击的横向控件。宽屏继续使用现有布局。

修改位置：

- 工作 Java：`/Users/suntong/Downloads/dsh-android/weblaunch-src/com/dshmobile/shell/WebLaunch.java`
- 工作 smali：`/Users/suntong/Downloads/dsh-android/dsh-mobile-src/smali_classes3/com/dshmobile/shell/WebLaunch*.smali`
- Git 工程同步：`/Users/suntong/Documents/Deepseek Harness/dsh-mobile-fork/android-port/weblaunch-java/WebLaunch.java`、`mobile-settings.css` 与同路径下 smali 树。

Java 中的手机设置 CSS 是内嵌字符串；修改 CSS 时需要同步更新 Java 字符串，再经 javac、d8、apktool 生成 smali。仅编辑独立 CSS 不会进入 APK。

## 验证

- Java 编译、DEX 生成、apktool 构建与 APK 签名验证通过。
- 实机预览检查通用设置、模型、内置插件、Agent 预设：正文区 scrollWidth 等于 clientWidth；普通按钮未检测到小于 43px 的宽或高。
- 使用相同签名、`adb install -r` 覆盖安装成功，没有清理应用数据。

## 仍需继续

- 当前产品界面仍是 WebView；原会话最初提出的安卓原生 UI 尚未实现。
- 小米 Pad 实机横竖屏验证未完成；本轮仅在 Redmi K30 上验证。
- 原会话列出的引擎静默挂起问题仍待复现。
- 手机与平板确认后再处理 NAS/GitHub 分发；本轮没有推送。
- 仓库中的运行时快照与 Downloads 下发行构建可能存在版本差异。本轮只同步了 WebLaunch 和对应 smali，不能把整个仓库当成最新版发行树。

## 开关复查修复

此前通用 dialog button 的 min-height 规则把 36×20 开关拉成了 36×44。现排除通用规则中的 switch，并将手机设置开关的点击区域固定为 48×44，内部轨道 44×26，滑块 20×20。轨道与滑块继续使用原主题色。

已重新构建、签名验证并覆盖安装。应用重启后验证开/关/恢复：滑块偏移分别为 23px/5px/23px，上下触摸留白均能命中按钮。测试后恢复原设置。新版 APK 已更新。
