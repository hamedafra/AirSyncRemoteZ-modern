#!/bin/zsh
# Builds the Windows app and one installer per processor type:
#   publish/Air-Sync-Remote-Z-Setup-x64.exe    (Intel/AMD PCs)
#   publish/Air-Sync-Remote-Z-Setup-arm64.exe  (ARM PCs, e.g. Snapdragon)
# Needs the .NET 10 SDK (dotnet) and NSIS (brew install makensis). Works on macOS, Linux or Windows.
set -e
cd "${0:A:h}"
VERSION=$(sed -n 's:.*<Version>\(.*\)</Version>.*:\1:p' AirSyncRemote.csproj)
rm -rf publish
for arch in x64 arm64; do
  dotnet publish -c Release -r win-$arch --self-contained true -p:PublishSingleFile=false -p:DebugType=none \
    -o publish/dir-$arch | grep -E " error |warning CS" || true
done
for arch in x64 arm64; do
  makensis -V2 -DVERSION=$VERSION -DARCH=$arch installer.nsi
done
ls -la publish/Air-Sync-Remote-Z-Setup-*.exe
