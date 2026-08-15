# DeepSeek Harness Android

原生 Android 壳应用，将 DeepSeek Harness 完整装进安卓手机。内嵌 Termux 运行时 + WebView UI，开箱即用。

## 项目架构

```
dsh-mobile/
├── build.gradle.kts          # 根级 Gradle 配置 (AGP 8.8.2 + Kotlin 2.0.21)
├── settings.gradle.kts       # 项目设置
├── gradle.properties         # JVM / AndroidX 配置
├── gradlew / gradlew.bat     # Gradle Wrapper 入口
├── gradle/wrapper/           # Gradle 8.11.1 Wrapper
├── docs/
│   └── design.md             # 设计文档
└── app/
    ├── build.gradle.kts      # 模块配置 (minSdk 26, targetSdk 34, compileSdk 36)
    └── src/main/
        ├── AndroidManifest.xml
        ├── java/com/dshmobile/shell/
        │   ├── MainActivity.kt       # 主 Activity (WebView + 引擎引导)
        │   ├── EngineManager.kt      # 引擎生命周期管理
        │   ├── EngineService.kt      # 前台服务 (看门狗保活)
        │   ├── AndroidBridge.kt      # JS 桥协议 v1
        │   ├── EngineProbe.kt        # 引擎可达性探测
        │   ├── ShizukuSupport.kt     # Shizuku 保活增强
        │   ├── SnapshotExtractor.kt  # 运行时快照解压
        │   └── UpdateManager.kt      # 在线热更新
        └── res/                      # Android 资源
```

## 核心特性

- **内嵌引擎**：首次启动自动解压 Termux 运行时快照（~70MB），无需安装 Termux
- **WebView 壳**：消费 `http://127.0.0.1:3080` 本地引擎，桥协议版本化
- **前台服务**：看门狗每 5 秒探测引擎，崩溃自动重启
- **Android 15 适配**：targetSdk 34 + LD_PRELOAD + linker64 回退
- **存储桥接**：SAF 目录选择 + All Files Access + 数据迁移到 Documents/dshdata
- **JS 桥协议 v1**：目录选择、屏幕常亮、通知、All Files Access 引导
- **热更新**：manifest 驱动的运行时快照更新（SHA-256 校验 + 原子切换）
- **深色模式**：系统深色状态推送到 WebView

## 构建

### 前置条件

1. 准备运行时快照：从 [GitHub Releases](https://github.com/thness/dsh-mobile/releases) 下载 `snapshot.tar.xz` 放到 `app/src/main/assets/snapshot.tar.xz`
2. JDK 17+

### 构建命令

```bash
./gradlew assembleDebug
```

产物位于 `app/build/outputs/apk/debug/app-debug.apk`

## 权限说明

| 权限 | 用途 |
|------|------|
| `INTERNET` | WebView + 引擎探测 |
| `MANAGE_EXTERNAL_STORAGE` | bash 进程访问用户目录 |
| `POST_NOTIFICATIONS` | 通知 |
| `FOREGROUND_SERVICE` | 引擎保活 |
| `FOREGROUND_SERVICE_DATA_SYNC` | 前台服务类型 |

## 修复记录

### v1.0.5-patched (原始修复)
- 修复 `EACCES: permission denied, link` 错误：将 `link()` 替换为 `rename()`
- 修复沙箱不可用错误：添加 Android passthrough 模式
- 修复 `spawn bash ENOENT`：使用 `/system/bin/sh` 替代
- 修复 glob 失败：添加 JavaScript glob 回退

### v0.10.3 (原生重构)
- 重构为原生 Android 项目结构
- 内嵌 Termux 运行时，无需外部 Termux 安装
- 添加前台服务保活 + 看门狗
- 添加 JS 桥协议 v1
- 添加 Android 15 ELF 执行限制适配
- 添加在线热更新支持

## 许可证

MIT License
