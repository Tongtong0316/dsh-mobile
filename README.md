# dsh-mobile

DeepSeek Harness Android — 把 DeepSeek Harness 完整装进安卓手机：内嵌 Node.js 运行时 + 官方 Web UI，开箱即用的独立 App。

## 修复版本 (Patched)

本仓库包含对 DeepSeek Harness v1.0.5 的修复版本，解决了 Android 上的 `EACCES: permission denied` 错误。

### 问题描述

原版 APK 在 Android 设备上运行时，会话持久化模块使用 `link()` 系统调用创建会话文件，但 Android 的 SELinux 策略禁止了该操作，导致：

```
EACCES: permission denied, link '/data/user/0/com.deepseek.dsh/files/dsh-home/sessions/.../session.jsonl.zstd.tmp' -> '.../session.jsonl.zstd'
```

### 修复内容

将 `dsh-session-persistence-jsonl` 模块中的 `link()` 替换为 `rename()`：

- **文件**: `dsh/node_modules/@deepseek-ai/dsh-session-persistence-jsonl/lib/index.js`
- **修改**: `await link(tmp, finalPath)` → `await rename(tmp, finalPath)`
- **原因**: `rename()` 在同一文件系统上是原子操作，且不受 Android SELinux 的 `link()` 限制

### 安装方法

1. 卸载原版 DeepSeek Harness（签名不同，无法直接覆盖安装）
2. 下载 [releases/DeepSeek-Harness-v1.0.5-patched.apk](releases/DeepSeek-Harness-v1.0.5-patched.apk)
3. 在设备上安装 APK

### 项目结构

```
dsh-mobile/
├── README.md                          # 本文件
├── releases/                          # 修复版 APK
│   └── DeepSeek-Harness-v1.0.5-patched.apk
── patch/                             # 修改的源代码
    └── dsh-session-persistence-jsonl-index.js
```

### 注意事项

- 本版本使用自签名证书重新签名，安装时系统会提示签名不匹配
- 修改仅影响文件写入方式，不影响会话数据格式
- 现有会话数据不受影响
