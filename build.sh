#!/bin/zsh
# Rebuilds AirSyncRemoteZ-modern.apk from ./project (apktool layout). Requires: apktool, Android build-tools.
set -e
cd "${0:A:h}"
BT=${BUILD_TOOLS:-/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0}
TMP=$(mktemp -d)
rm -rf project/build   # apktool caches classes.dex here and may skip changed smali
apktool b -f -o $TMP/unsigned.apk project
$BT/zipalign -f -p 4 $TMP/unsigned.apk $TMP/aligned.apk
$BT/apksigner sign --ks signing.keystore --ks-pass file:signing.password --ks-key-alias airsync \
  --out AirSyncRemoteZ-modern.apk $TMP/aligned.apk 2>/dev/null
rm -rf $TMP AirSyncRemoteZ-modern.apk.idsig
ls -la AirSyncRemoteZ-modern.apk
