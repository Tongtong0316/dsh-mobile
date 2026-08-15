# DeepSeek Harness Mobile

把 DeepSeek Harness 完整装进安卓手机：内嵌 Node.js 运行时 + 官方 Web UI，开箱即用的独立 App。

## 下载

| 版本 | 大小 | 说明 | 下载 |
|------|------|------|------|
| v0.10.1 | 41 MB | 官方正式版（推荐） | [APK](https://github.com/thness/dsh-mobile/releases/download/v0.10.1/dsh-mobile-v0.10.1.apk) |
| v1.0.5-patched-v5 | 140 MB | 补丁版（含网络修复） | [APK](https://github.com/thness/dsh-mobile/releases/download/v1.0.5-patched-v5/DeepSeek-Harness-v1.0.5-patched-v5.apk) |

## 功能特性

- **完整 DeepSeek Harness**：内嵌 Node.js 运行时，包含所有官方功能
- **WebView UI**：原生 Android 界面，流畅体验
- **后台运行**：前台服务保持引擎常驻
- **文件访问**：支持外部存储工作区
- **Shizuku 集成**：可选特权操作（无需 root）
- **OTA 更新**：内置更新检查器

## 系统要求

- Android 8.0+ (API 26)
- 建议 4GB+ RAM
- 建议 500MB+ 可用存储

## 安装说明

### 正式版 (v0.10.1)

1. 下载 `dsh-mobile-v0.10.1.apk`
2. 允许安装未知来源应用
3. 安装 APK
4. 启动应用，等待引擎初始化（首次约 30 秒）

### 补丁版 (v1.0.5-patched-v5)

补丁版包含以下修复：
- 文件系统权限修复
- Termux 环境适配
- DNS 解析修复
- SSL 证书配置
- Shell 命令兼容

**注意**：补丁版使用自签名证书，需先卸载旧版本。

## 架构

```
┌─────────────────────────────────────┐
│           Android App               │
│  ┌───────────────────────────────┐  │
│  │         WebView UI            │  │
│  │    (http://127.0.0.1:3080)    │  │
│  └──────────────┬────────────────┘  │
│                 │ HTTP              │
│  ┌──────────────▼────────────────┐  │
│  │      Node.js Engine           │  │
│  │   (snapshot.tar.xz → runtime) │  │
│  └──────────────┬────────────────┘  │
│                 │                   │
│  ┌──────────────▼────────────────┐  │
│  │     EngineService             │  │
│  │   (Foreground Service)        │  │
│  └───────────────────────────────┘  │
└─────────────────────────────────────┘
```

### 核心组件

| 组件 | 功能 |
|------|------|
| `MainActivity` | WebView 容器，UI 交互 |
| `EngineManager` | Node.js 引擎生命周期管理 |
| `EngineService` | 前台服务，保持引擎运行 |
| `AndroidBridge` | JS 桥接协议 v1 |
| `ShizukuSupport` | Shizuku 特权操作支持 |
| `SnapshotExtractor` | 运行时快照解压 |
| `UpdateManager` | OTA 更新管理 |

## 开发日志

详见 [CHANGELOG.md](CHANGELOG.md)

## 构建

```bash
# 克隆仓库
git clone https://github.com/thness/dsh-mobile.git
cd dsh-mobile

# 将 snapshot.tar.xz 放入 app/src/main/assets/
# 可从 Release 下载

# 构建 Debug APK
./gradlew assembleDebug

# 构建 Release APK
./gradlew assembleRelease
```

## 已知问题

1. **网络连接**：部分 Android 版本 DNS 解析可能失败
2. **SSL 证书**：HTTPS 连接需要正确配置 CA 证书
3. **内存占用**：引擎在低端设备上可能占用较多 RAM
4. **电池消耗**：前台服务会保持 CPU 活跃

## 路线图

- [ ] 减小运行时快照体积
- [ ] 引擎组件懒加载
- [ ] 崩溃报告集成
- [ ] 完整 Termux 兼容性
- [ ] 插件系统支持
- [ ] 多模型提供商支持
- [ ] 离线模式（本地模型）
- [ ] JNI 原生代码编译
- [ ] 低端设备内存优化
- [ ] 电池优化

## 许可证

MIT License

## 相关链接

- [DeepSeek](https://www.deepseek.com)
- [DeepSeek Harness](https://github.com/deepseek-ai/harness)
- [Shizuku](https://github.com/RikkaApps/Shizuku)
