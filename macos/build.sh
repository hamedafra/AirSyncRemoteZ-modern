#!/bin/zsh
# Builds "Air Sync Remote-Z.app" (universal: Apple Silicon + Intel). No Xcode needed, just the Command Line Tools.
set -e
cd "${0:A:h}"
APP="build/Air Sync Remote-Z.app"
rm -rf "$APP"
mkdir -p build/obj "$APP/Contents/MacOS" "$APP/Contents/Resources"
for arch in arm64 x86_64; do
  swiftc -O -swift-version 5 -target $arch-apple-macos13.0 \
    -framework AppKit -framework SwiftUI -framework AVFoundation -framework AudioToolbox \
    -framework CoreMedia -framework VideoToolbox -framework CoreImage \
    Sources/AirSyncRemote/*.swift -o build/obj/AirSyncRemote-$arch
done
lipo -create build/obj/AirSyncRemote-arm64 build/obj/AirSyncRemote-x86_64 -output "$APP/Contents/MacOS/AirSyncRemote"
cp Resources/Info.plist "$APP/Contents/Info.plist"
[ -f Resources/AppIcon.icns ] && cp Resources/AppIcon.icns "$APP/Contents/Resources/"
codesign --force --sign - --entitlements Resources/AirSyncRemote.entitlements "$APP"
echo "built $APP"
