#!/bin/bash
# DeepSeek Harness (Android) 无损升级脚本
# 用法: ./android-upgrade.sh "build/DeepSeek Harness (Android).apk" [设备Serial]
# 原理: 覆盖安装保留全部应用数据(设置/会话/凭据), 仅删除解压出的运行时目录,
#       让应用按新版 APK 内置快照重新解压, dsh 家目录 files/home 原封不动。
set -euo pipefail

APK="${1:?用法: $0 <apk路径> [设备Serial]}"
SERIAL="${2:-}"
ADB="${ADB:-$HOME/Downloads/android-platform-tools/platform-tools/adb}"
PKG="com.dshmobile.shell"

A() { if [ -n "$SERIAL" ]; then "$ADB" -s "$SERIAL" "$@"; else "$ADB" "$@"; fi; }

echo "[1/5] 推送 APK…"
A push "$APK" /data/local/tmp/dsh-upgrade.apk

echo "[2/5] 覆盖安装(保数据)…(MIUI 弹窗如出现会自动点击'继续安装')"
( A shell pm install -r /data/local/tmp/dsh-upgrade.apk > /tmp/dsh-install.out 2>&1 & )
for i in $(seq 1 60); do
  F=$(A shell "dumpsys window 2>/dev/null | grep mCurrentFocus" || true)
  if echo "$F" | grep -q AdbInstallActivity; then
    A shell uiautomator dump /sdcard/ui.xml >/dev/null 2>&1 || true
    XY=$(A shell cat /sdcard/ui.xml | python3 -c '
import re,sys
s=sys.stdin.read()
m=re.search(r"text=\"继续安装\"[^>]*bounds=\"\[(\d+),(\d+)\]\[(\d+),(\d+)\]\"",s)
if m: print((int(m.group(1))+int(m.group(3)))//2,(int(m.group(2))+int(m.group(4)))//2)')
    [ -n "${XY:-}" ] && A shell input tap $XY
    break
  fi
  sleep 0.25
done
sleep 5
grep -q Success /tmp/dsh-install.out || { cat /tmp/dsh-install.out; exit 1; }

echo "[3/5] 清运行时目录(触发新快照解压, 会话/设置不动)…"
A exec-out run-as $PKG sh -c 'rm -rf files/usr files/._usr && echo cleared'

echo "[4/5] 重启应用并恢复权限…"
A shell am force-stop $PKG || true
A shell appops set $PKG MANAGE_EXTERNAL_STORAGE allow || true
A shell dumpsys deviceidle whitelist +$PKG >/dev/null || true
A shell am start -n $PKG/.MainActivity

echo "[5/5] 等待引擎就绪…"
T0=$(date +%s)
for i in $(seq 1 90); do
  P=$(A shell "cat /proc/net/tcp 2>/dev/null" | grep -c ':0C08 00000000:0000 0A' | tr -d '\r' || true)
  if [ "${P:-0}" -ge 1 ]; then echo "完成: 引擎 $(( $(date +%s)-T0 )) 秒就绪, 会话与设置已保留"; exit 0; fi
  sleep 2
done
echo "警告: 90 秒内未见 3080 端口, 请打开应用查看状态" >&2
exit 1
