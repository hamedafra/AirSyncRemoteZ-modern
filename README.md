# Air Sync Remote-Z — modernized for current Android, plus a Mac version

## About Air Sync Remote-Z Beta 9

Use your Android phone or tablet as a wireless RCU for your Formuler STB. Easily navigate content and play games on your Formuler Z-series device with the built-in touchpad, gamepad, and air mouse controls. Use Air Sync Remote to quickly enter text by using the touchscreen keyboard.

Air Sync Remote also offers mult-screen mirroring with simulateous touchscreen control support. Pull content from the big screen to your mobile device with this easy-to-use app.

To get started, connect your Android phone or tablet to the same network as your Formuler Z device.

*(Original description of Air Sync Remote-Z Beta 9.)*

## Download
From the [Releases page](https://github.com/hamedafra/AirSyncRemoteZ-modern/releases):
- **Android** — `Air-Sync-Remote-Z-Android.apk`: one APK for every phone and tablet (Android 5 to 16, including
  64-bit-only devices). Remote, keyboard, voice, DLNA, AirMouse and screen mirroring all work. Builds are signed
  with the same key, so newer ones install as updates; the original app (different signature) must be
  uninstalled first.
- **Mac** — `Air-Sync-Remote-Z-macOS.zip`: native macOS app (Apple Silicon and Intel, macOS 13+) with remote,
  keyboard, mirroring with sound, full screen and more. See [macos/README.md](macos/README.md).

# Android app

Rebuilt from the original APK (apkmirror `Beta_9-10`, signed by Fortis) with apktool, so it installs and
runs on current Android, including 64-bit-only phones (tested on Android 15 and 16).

## Changes
- targetSdk 19 → 28, minSdk 21 (Android 14+ refuses to install old-target apps).
- App name shown as "Air Sync Remote-Z" (was "Air Sync Remote Z").
- Runtime permission request (mic, camera, storage) on the main screen.
- `usesCleartextTraffic=true` + `org.apache.http.legacy` (UPnP/DLNA uses plain HTTP via Apache HttpClient).
- `file://` URI crash fix (StrictMode VmPolicy reset in `MyApp`).
- **Screen mirroring rewritten in Java** (`mirror-src/.../MirrorStream.java`), replacing the 32-bit
  `libmirror50_jni.so`: receives the STB stream on UDP 8888 (H.264) / 8890 (AAC-ADTS) and decodes it with
  the phone's hardware MediaCodec. `MirrorView`'s former native methods call into it.
- Remaining native calls (AirMouse sensor math, Huawei HME video) guarded so the missing libraries can't crash the app.
- Removed unused READ_PHONE_STATE / READ_CONTACTS; camera feature marked optional.
- Mirror screen uses `sensorLandscape`: the picture flips when the phone is turned to the other landscape side.
- **Smoother mirroring on weak Wi-Fi**: audio plays from a jitter buffer and is the master clock; video frames
  are decoded on their own thread and shown when the matching audio plays (lip sync). The buffer is 150 ms;
  Settings → "Smooth mirroring (weak Wi-Fi)": *Auto* (default) measures the network for the first seconds and
  raises it (up to 450 ms) only when packets arrive in bursts, *On* always uses 300 ms, *Off* stays at 150 ms.
  Lost audio is concealed (faded continuation of the last sound), damaged video frames are dropped without
  freezing (the STB sends a key frame about every second), and a low-latency Wi-Fi lock is held while mirroring.
- **Sound keeps playing in the background** (Home, other apps, screen off), like a music app: a
  notification (also on the lock screen) has Pause/Play and Stop; tapping it returns to the mirror screen
  without restarting the stream. Pauses for calls and other players and when headphones disconnect; stops when
  the app is swiped away or the STB sends no sound for 15 s. Leaving the mirror screen inside the app still
  stops mirroring. Settings → "Keep sound playing in background" (on by default). In the background, Auto mode
  uses the 300 ms buffer (screen-off Wi-Fi power saving delivers packets in bursts). Code:
  `mirror-src/.../MirrorAudioService.java`, hooks in `MultiScreenActivity` onPause/onResume/onDestroy.
  On Xiaomi/HyperOS, set the app's battery saver to "No restrictions" if the sound stops with the screen off.
- No native libraries are shipped (the old 32-bit ones can't load on 64-bit-only phones; mirroring is Java now).

## Mirror stream format (from the STB)
Every UDP datagram: 12-byte header — byte 1 bit 0x80 = last datagram of the frame, bytes 2-3 = sequence (LE).
First datagram of a frame adds a 12-byte frame header (LE ints): type (1 P, 5 IDR, 7 SPS/PPS, 10 AAC),
timestamp ms, length. The frame is the first `length` bytes of the concatenated payloads. Video datagrams are
~10 KB (IP-fragmented on the wire).

## Rebuild
Edit files under `project/` (smali + res, apktool layout), then run `./build.sh`.
To change the mirror code: edit `mirror-src/`, then run `./build-mirror.sh` (javac + d8 + baksmali; it replaces
`MirrorStream*.smali` / `MirrorAudioService*.smali` in `project/smali/com/hisilicon/multiscreen/mirror/`), then `./build.sh`.
`build.sh` signs with `signing.keystore` (alias `airsync`, password in `signing.password`). They are not in
this repository; to build your own, create a key with
`keytool -genkeypair -keystore signing.keystore -alias airsync -keyalg RSA -keysize 2048 -validity 10000`
and put its password in `signing.password`. An APK signed with a different key can't update one signed with
another; uninstall first.

## Disclaimer
Unofficial community modernization of an abandoned app. `project/` is the original Air Sync Remote-Z APK
decompiled with apktool. The original app and its code belong to their owners (Fortis/Formuler, HiSilicon,
Huawei). New code: `mirror-src/`, `macos/`, the build scripts and the changes listed above. Not affiliated with any of them.
