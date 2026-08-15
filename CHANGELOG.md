# DeepSeek Harness Mobile - 开发日志

## v0.10.1 (2026-08-15)

首个公开发布版本。

### 功能
- 完整 DeepSeek Harness 功能移植至 Android
- 内嵌 Node.js 运行时（37 MB snapshot）
- WebView UI，连接本地引擎 `127.0.0.1:3080`
- 前台服务后台常驻
- Shizuku 集成（可选特权操作）
- OTA 更新支持（SHA-256 校验）
- 外部存储工作区

### 架构
- **包名**: `com.dshmobile.shell`
- **目标 SDK**: 36 (Android 16)
- **最低 SDK**: 26 (Android 8.0)
- **APK 大小**: 41 MB

### 核心组件
| 组件 | 功能 |
|------|------|
| `MainActivity` | WebView 容器，UI 交互 |
| `EngineManager` | Node.js 引擎生命周期管理 |
| `EngineService` | 前台服务，保持引擎运行 |
| `AndroidBridge` | JS 桥接协议 v1 |
| `ShizukuSupport` | Shizuku 特权操作支持 |
| `SnapshotExtractor` | 运行时快照解压（XZ/LZMA2） |
| `UpdateManager` | OTA 更新管理 |

### 依赖
- AndroidX (Activity, Lifecycle, ViewModel, SavedState)
- Shizuku (rikka.shizuku) — 特权 API
- Tukaani XZ — LZMA2 解压
- Kotlin Coroutines — 异步操作

### 权限
| 权限 | 用途 |
|------|------|
| `INTERNET` | API 访问、WebView 通信 |
| `MANAGE_EXTERNAL_STORAGE` | 文件系统访问 |
| `POST_NOTIFICATIONS` | 前台服务通知 |
| `FOREGROUND_SERVICE` | 后台保活 |
| `FOREGROUND_SERVICE_DATA_SYNC` | 数据同步服务 |
| `moe.shizuku.manager.permission.API_V23` | Shizuku API |
