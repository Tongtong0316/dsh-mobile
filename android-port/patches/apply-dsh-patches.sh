#!/bin/sh
# apply-dsh-patches.sh — 把 dsh npm 树（android-arm64 交叉安装产物）打成可跑在
# 安卓（bionic/FBE）上的引擎。共 7 项补丁，其中 3/6/7 在应用 smali 侧（本仓库
# android-port/dsh-mobile-src 已含），本脚本处理 npm 树侧的 4 项 + 原生产物安置。
#
# 用法:
#   DSH_VERSION=0.2.0-rc.2 sh apply-dsh-patches.sh <npm-stage 目录>
# 前置:
#   npm install @deepseek-ai/dsh@$DSH_VERSION --ignore-scripts --omit=dev \
#       --os=android --cpu=arm64   （在 <npm-stage> 里执行）
# 产出:
#   <npm-stage>/node_modules → 可整体替换快照 usr/lib/node_modules
#
set -eu
STAGE="${1:?用法: sh apply-dsh-patches.sh <npm-stage>}"
STAGE=$(cd "$STAGE" && pwd)   # 转绝对路径，脚本内部 node require 引用才可靠
HERE=$(cd "$(dirname "$0")" && pwd)
NM="$STAGE/node_modules"

[ -d "$NM/@deepseek-ai/dsh" ] || { echo "FATAL: $NM 里没有 dsh 树"; exit 2; }

echo "== 补丁 1: node-pty 安卓预编译 =="
mkdir -p "$NM/node-pty/prebuilds/android-arm64"
cp "$HERE/prebuilt/pty.node" "$HERE/prebuilt/spawn-helper" "$NM/node-pty/prebuilds/android-arm64/"
# （重编方法：NDK r27 aarch64-linux-android26-clang++ 编 src/unix/pty.cc，
#   -DNAPI_VERSION=9 -DNAPI_DISABLE_CPP_EXCEPTIONS + node-addon-api 头；
#   spawn-helper 为静态 C 程序。见 README「原生件重编」。）

echo "== 补丁 2: sharp wasm32 运行时 =="
SHARP_VER=$(node -p "require('$NM/sharp/package.json').version")
(cd "$STAGE" && npm install "@img/sharp-wasm32@$SHARP_VER" @emnapi/runtime --ignore-scripts --omit=dev)
rm -rf "$NM/@img/sharp-darwin-arm64" "$NM/@img/sharp-libvips-darwin-arm64"

echo "== 补丁 3: node-addon-system 安卓分支 =="
mkdir -p "$NM/@deepseek-ai/node-addon-system/bin"
cp "$HERE/prebuilt/system.node" "$NM/@deepseek-ai/node-addon-system/bin/"
python3 - "$NM/@deepseek-ai/node-addon-system/lib/flock.js" <<'PY'
import pathlib, sys
p = pathlib.Path(sys.argv[1]); s = p.read_text()
old = """    const { platform, arch } = process;
    if (platform !== 'linux' && platform !== 'darwin') {"""
new = """    const { platform, arch } = process;
    if (platform === 'android') {
        const require = createRequire(import.meta.url);
        binding = require('../bin/system.node');
        return binding;
    }
    if (platform !== 'linux' && platform !== 'darwin') {"""
assert s.count(old) == 1
p.write_text(s.replace(old, new, 1))
print("  flock.js android 分支 ✓")
PY

echo "== 补丁 4: link()→rename()（FBE 禁硬链接）=="
python3 - "$NM/@deepseek-ai/dsh-session-persistence-jsonl/lib/index.js" <<'PY'
import pathlib, sys
p = pathlib.Path(sys.argv[1]); s = p.read_text()
subs = [
    ('import { link, lstat, mkdir, mkdtemp, open, readFile, readdir, realpath, rm, stat, truncate } from "node:fs/promises";',
     'import { link, lstat, mkdir, mkdtemp, open, readFile, readdir, realpath, rename, rm, stat, truncate } from "node:fs/promises";'),
    ("\tlstat: (path) => lstat(path),\n\tlink,\n\trm: (path) => rm(path, { force: true })\n};",
     "\tlstat: (path) => lstat(path),\n\tlink,\n\trename: (oldPath, newPath) => rename(oldPath, newPath),\n\trm: (path) => rm(path, { force: true })\n};"),
    ("await internals.fs.link(staged, currentPath);", "await internals.fs.rename(staged, currentPath);"),
    ("await link(tmp, finalPath);", "await rename(tmp, finalPath);"),
]
for old, new in subs:
    assert s.count(old) == 1, f"anchor 失效: {old[:50]}"
    s = s.replace(old, new, 1)
p.write_text(s)
print("  persistence-jsonl 4 处 ✓（含 defaultFileSystem 补 rename——漏掉会静默失败）")
PY
python3 - "$NM/@deepseek-ai/dsh-attachment-local/lib/index.js" <<'PY'
import pathlib, sys
p = pathlib.Path(sys.argv[1]); s = p.read_text()
for old, new in [
    ("await link(source, target);", "await rename(source, target);"),
    ("await link(staged.path, target);", "await rename(staged.path, target);"),
]:
    assert s.count(old) == 1, f"anchor 失效: {old[:50]}"
    s = s.replace(old, new, 1)
p.write_text(s)
print("  attachment-local 2 处 ✓")
PY

echo "== 补丁 5: node-addon-require-builtin 纯 JS 垫片 =="
python3 - "$NM/node-addon-require-builtin/lib/index.js" <<'PY'
import pathlib, sys
p = pathlib.Path(sys.argv[1]); s = p.read_text()
old = '"use strict";'
shim = '''"use strict";
// Android 兼容（dsh-mobile 移植）：官方平台包不发行 android-arm64 原生件。
// 引擎以 --expose-internals 运行，require('internal/…')/内置模块可直接加载，
// 语义与原生 requireBuiltin 等价（无拦截 internal 路径的 require 钩子场景）。
if (process.platform === 'android') {
    const { builtinModules } = require('module');
    function requireBuiltin(moduleId) {
        return require(moduleId);
    }
    function isAllowedInternalId(moduleId) {
        const bare = moduleId.replace(/^node:/, '');
        return builtinModules.includes(bare) || builtinModules.includes(moduleId) || moduleId.startsWith('internal/');
    }
    function getBindingInfo() {
        return { platform: process.platform, arch: process.arch, napiVersion: 9, androidShim: true };
    }
    exports.__esModule = true;
    exports.requireBuiltin = requireBuiltin;
    exports.isAllowedInternalId = isAllowedInternalId;
    exports.getBindingInfo = getBindingInfo;
    exports.default = { requireBuiltin, isAllowedInternalId, getBindingInfo };
    return;
}
'''
assert s.startswith(old)
p.write_text(s.replace(old, shim, 1))
print("  require-builtin 垫片 ✓（0.2.0+ 新增依赖，首个启动硬阻塞）")
PY

echo "== 收尾检查 =="
for d in node-pty/prebuilds/android-arm64/pty.node \
         @img/sharp-wasm32 \
         @deepseek-ai/node-addon-system/bin/system.node; do
    [ -e "$NM/$d" ] || { echo "FATAL: 缺 $d"; exit 3; }
done
echo "全部完成。同步到快照: rm -rf snap-stage/usr/lib/node_modules && cp -R $NM snap-stage/usr/lib/node_modules"
echo "重打包记得 COPYFILE_DISABLE=1 tar cJf snapshot.tar.xz usr（防 macOS AppleDouble 垃圾）"
