# DeepSeek Harness Mobile - Development Log

## v0.10.1 (2026-08-15)

### APK Structure Analysis

**Package**: `com.dshmobile.shell`  
**Size**: 41 MB  
**Target SDK**: 36 (Android 16)  
**Min SDK**: 26 (Android 8.0)

### Architecture Overview

```
dsh-mobile-v0.10.1.apk
├── AndroidManifest.xml          # App manifest
├── classes.dex                  # Main DEX (8.2 MB)
├── classes2.dex                 # Secondary DEX (18 KB)
├── classes3.dex                 # Tertiary DEX (76 KB)
├── assets/
│   └── snapshot.tar.xz          # Runtime snapshot (37 MB)
├── res/                         # Resources (drawables, layouts, etc.)
├── kotlin/                      # Kotlin metadata
└── META-INF/                    # Signing & dependencies
```

### Native Components (Kotlin/Java)

| Class | Purpose |
|-------|---------|
| `MainActivity` | Main activity with WebView, 28 lambda handlers |
| `EngineManager` | Node.js engine lifecycle management |
| `EngineService` | Foreground service for engine process |
| `EngineProbe` | Engine health check and monitoring |
| `AndroidBridge` | JavaScript bridge protocol v1 |
| `ShizukuSupport` | Shizuku integration for privileged ops |
| `SnapshotExtractor` | Extracts snapshot.tar.xz to runtime dir |
| `UpdateManager` | OTA update with SHA-256 verification |

### Dependencies

- **AndroidX**: Activity, Lifecycle, ViewModel, SavedState, ProfileInstaller
- **Shizuku** (rikka.shizuku): Privileged API access
- **Tukaani XZ**: LZMA2 decompression for snapshot
- **Kotlin Coroutines**: Async operations

### Permissions

| Permission | Purpose |
|------------|---------|
| `INTERNET` | API access, WebView communication |
| `MANAGE_EXTERNAL_STORAGE` | File system access for workspace |
| `POST_NOTIFICATIONS` | Foreground service notification |
| `FOREGROUND_SERVICE` | Keep engine alive |
| `FOREGROUND_SERVICE_DATA_SYNC` | Data sync service type |
| `moe.shizuku.manager.permission.API_V23` | Shizuku API access |

### Features

- **WebView-based UI**: Connects to local Node.js server at `127.0.0.1:3080`
- **Engine Management**: Automatic extraction and startup of Node.js runtime
- **Foreground Service**: Keeps engine running in background
- **Shizuku Integration**: Optional privileged operations without root
- **OTA Updates**: Built-in update checker with SHA-256 verification
- **Network Security**: Cleartext traffic allowed for localhost

---

## Previous Patches (v1.0.5-patched-v1 to v5)

### v1.0.5-patched-v1
- Initial patch for file system permission errors
- Replaced `link()` with `rename()` in session persistence

### v1.0.5-patched-v2
- External storage workspace configuration
- Default browse root for file picker

### v1.0.5-patched-v3
- Sandbox passthrough mode for Android
- Shell fallback from bash to `/system/bin/sh`
- JavaScript glob fallback when ripgrep unavailable

### v1.0.5-patched-v4
- Termux environment initialization
- LD_PRELOAD support for termux-exec
- SONAME symlink fixes for shared libraries
- Re-enabled `dsh-tool-bash` in Android preset

### v1.0.5-patched-v5
- DNS resolution fix (Android system properties → resolv.conf)
- SSL certificate path configuration
- IPv4-first DNS resolution order

---

## Development Roadmap

### Phase 1: Native Android Shell (Current)
- [x] WebView-based UI shell
- [x] Engine extraction and startup
- [x] Foreground service for background execution
- [x] Shizuku integration for privileged ops
- [x] OTA update mechanism

### Phase 2: Runtime Optimization
- [ ] Reduce snapshot size (currently 37 MB)
- [ ] Lazy loading for engine components
- [ ] Better error handling and recovery
- [ ] Crash reporting integration

### Phase 3: Feature Parity
- [ ] Full Termux compatibility
- [ ] Plugin system support
- [ ] Multiple model provider support
- [ ] Offline mode with local models

### Phase 4: Performance
- [ ] Native code compilation (JNI)
- [ ] Memory optimization for low-end devices
- [ ] Battery optimization
- [ ] Background task scheduling

---

## Known Issues

1. **Network Connectivity**: Node.js process may fail to resolve DNS on some Android versions
2. **SSL Certificates**: HTTPS connections require proper CA certificate configuration
3. **Memory Usage**: Engine can consume significant RAM on older devices
4. **Battery Drain**: Foreground service keeps CPU active

---

## Build Information

- **Build Date**: 2026-08-15
- **Build Tool**: Gradle 8.11.1 + AGP 8.8.2
- **Kotlin Version**: 2.1.0
- **Signing**: Debug keystore (self-signed)

---

## License

This project is open source under the MIT License.

## Repository

GitHub: [thness/dsh-mobile](https://github.com/thness/dsh-mobile)
