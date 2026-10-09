#!/bin/sh
# build-apk.sh — 从本仓库的 smali 树构建签名 APK
# 前置: snapshot.tar.xz 已按 README 步骤重打包放进 dsh-mobile-src/assets/
# 工具链: apktool / zipalign / apksigner / JDK21（路径按本机实际情况改）
set -eu
HERE=$(cd "$(dirname "$0")" && pwd)
SRC="$HERE/dsh-mobile-src"

APKTOOL=${APKTOOL:-apktool}
ZIPALIGN=${ZIPALIGN:-zipalign}
APKSIGNER=${APKSIGNER:-apksigner}
KS=${KS:-$HERE/dsh.keystore}        # 自建: keytool -genkeypair -keystore dsh.keystore -alias dsh -keyalg RSA -validity 10000
KSPASS=${KSPASS:-dsh123456}

[ -f "$SRC/assets/snapshot.tar.xz" ] || { echo "FATAL: 先按 README 重打包 snapshot.tar.xz"; exit 2; }
[ -f "$KS" ] || { echo "FATAL: 缺签名密钥 $KS（生成命令见本文件注释）"; exit 2; }

"$APKTOOL" b "$SRC" -o build-unsigned.apk
"$ZIPALIGN" -f 4 build-unsigned.apk build-aligned.apk
"$APKSIGNER" sign --ks "$KS" --ks-pass "pass:$KSPASS" --key-pass "pass:$KSPASS" \
    --out "DeepSeek-Harness-Android.apk" build-aligned.apk
echo "完成: $HERE/DeepSeek-Harness-Android.apk"
echo "注意: 换密钥后已装用户必须卸载重装（同签名才能覆盖升级保数据）"
