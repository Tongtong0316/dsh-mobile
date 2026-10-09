# DeepSeek Harness Mobile

**一个 APK，把完整的 DeepSeek AI 编程助手装进口袋。**

## 下载

**v0.10.1** (41 MB) — [点击下载 APK](https://github.com/thness/dsh-mobile/releases/download/v0.10.1/dsh-mobile-v0.10.1.apk)

## 这是什么

DeepSeek Harness Mobile 将 DeepSeek 官方 Harness 完整打包进一个 Android APK。内嵌 Node.js 运行时，自带 Web UI，安装即用，无需额外依赖。

## 特性

- 完整 DeepSeek Harness 功能
- 内嵌 Node.js 运行时 + 官方 Web UI
- 前台服务后台常驻
- 外部存储工作区
- Shizuku 集成（可选特权操作）
- OTA 更新支持

## 要求

- Android 8.0+ (API 26)
- 4GB+ RAM（推荐）
- 500MB+ 存储空间

## 安装

1. 下载 APK
2. 允许安装未知来源应用
3. 启动，等待引擎初始化（首次约 30 秒）

## 架构

```
Android App
├── WebView UI → http://127.0.0.1:3080
├── Node.js Engine (snapshot.tar.xz → runtime)
├── EngineService (前台服务)
├── AndroidBridge (JS 桥接 v1)
├── ShizukuSupport (特权操作)
└── UpdateManager (OTA 更新)
```

## 构建

```bash
git clone https://github.com/thness/dsh-mobile.git && cd dsh-mobile
# 将 snapshot.tar.xz 放入 app/src/main/assets/
./gradlew assembleDebug
```

## 开发日志

详见 [CHANGELOG.md](CHANGELOG.md)

## 许可证

MIT License
