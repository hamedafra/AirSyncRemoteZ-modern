#!/bin/zsh
# Compiles mirror-src/ (MirrorStream.java, MirrorAudioService.java) and installs it as smali into project/. Then run ./build.sh.
set -e
cd "${0:A:h}"
SDK=${ANDROID_SDK:-/opt/homebrew/share/android-commandlinetools}
BT=$SDK/build-tools/36.0.0
JAR=$SDK/platforms/android-34/android.jar
TMP=$(mktemp -d)
mkdir -p $TMP/classes $TMP/dex
javac --release 8 -Xlint:-options -nowarn -cp $JAR -d $TMP/classes $(find mirror-src -name "*.java")
$BT/d8 --min-api 21 --lib $JAR --output $TMP/dex $(find $TMP/classes -name "*.class")
(cd $TMP/dex && zip -q ../m.apk classes.dex)
apktool d -r -f -o $TMP/smali $TMP/m.apk >/dev/null
rm -f project/smali/com/hisilicon/multiscreen/mirror/Mirror{Stream,AudioService}*.smali
cp $TMP/smali/smali/com/hisilicon/multiscreen/mirror/Mirror{Stream,AudioService}*.smali project/smali/com/hisilicon/multiscreen/mirror/
rm -rf $TMP
echo "MirrorStream + MirrorAudioService smali updated"
