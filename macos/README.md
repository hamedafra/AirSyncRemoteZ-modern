# Air Sync Remote-Z for Mac

Native macOS version of *Air Sync Remote-Z* for Formuler Z-series / HiSilicon "Air Sync" receivers.
Universal app (Apple Silicon and Intel), macOS 13 or newer.

- Finds the receiver on your network automatically (or type its IP).
- **Mirror**: the TV picture in the window with sound (H.264 decoded by VideoToolbox, AAC audio), in lip sync:
  the sound is the clock and each video frame is shown when its sound is heard.
- **Full Screen**: opens the picture in its own full-screen Space (on your other display if you have one);
  the app window stays open with all its controls. Move the mouse over the picture for the Lock and
  Exit Full Screen buttons.
- **Lock** (⌘L): ignores keyboard, clicks on the picture, the remote panel and the Remote menu, so nothing is
  changed on the receiver by accident.
- **Volume**: while mirroring, the remote's volume and mute keys change the sound on the Mac (the receiver's own
  volume does not affect the mirrored sound); a volume bar shows on the picture. Slider in the top bar.
  Not mirroring, they go to the receiver.
- Click/drag on the picture = touch on the TV.
- Remote panel: power, mute, home, menu, D-pad/OK, back, info, volume, channel, color keys, numbers, play/stop,
  and a text field to type on the TV.
- Keyboard (click the picture first): arrows, Return = OK, Esc = Back, Delete, Home, PageUp/PageDown = channel,
  F1–F4 = red/green/yellow/blue, and any typed text goes to the receiver (handy for search boxes).
- Menu **Remote** has shortcuts: ⌘↑/⌘↓ volume, ⇧⌘H home, ⇧⌘M menu, ⇧⌘R start/stop mirroring, ⌘L lock, …

Only one remote can control the receiver at a time — connecting from the Mac disconnects the phone app.

## Install
Download `Air-Sync-Remote-Z-macOS.zip` from the [Releases page](https://github.com/hamedafra/Air-Sync-Remote-Z/releases),
unzip it and move **Air Sync Remote-Z** to Applications. The app is not notarized by Apple, so the first time
right-click it → **Open** → **Open** (or run `xattr -dr com.apple.quarantine "/Applications/Air Sync Remote-Z.app"`).
On first launch allow **"find devices on your local network"**, otherwise the receiver can't be found or mirrored.

## Build
Needs only the Xcode Command Line Tools: `./build.sh` → `build/Air Sync Remote-Z.app` (universal, ad-hoc signed).

## Diagnostics
Run the executable inside the app, e.g. `"build/Air Sync Remote-Z.app/Contents/MacOS/AirSyncRemote" --discover`:
- `--discover` — list receivers and their UPnP services.
- `--livetest 15 out.png` — connect, mirror 15 s, report decoded frames/audio, save a frame, disconnect.
- `--keytest <dir>` — connect, mirror, press Info, volume up/down and mute twice, saving the picture after each
  and printing every key packet.
- `--selftest 15 out.png` — decode whatever arrives on UDP 8888/8890 (e.g. a capture replay).
- `--synctest 15` — play what arrives on UDP 8888/8890 (muted) and print the lip-sync clock.
- `AIRSYNC_DEBUG=1` logs SOAP traffic and key packets.

## Protocol (as implemented)
- Discovery: SSDP `ST: urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1`.
- Session: SOAP `AccessControlServer` Hello → QueryStateVariable (Vinput port) → Ping every 1.5 s
  (reply has `ReturnPingTime`, `CurrentRemoteID`) → GENA SUBSCRIBE; Byebye on quit.
- Keys: 22-byte UDP to the Vinput port (8822): header `01 00 02 00 02 00 16 00 00 00 00 00`, `07 01`,
  int32 Linux keycode, int32 down(1)/up(0), little endian. Touch: 76-byte type-4 packet, 1280×720 coordinates.
- Mirror: `MirrorControlServer` SetMirrorParameter `fps=15,resend=0,cip=<mac ip>,cport=8888,video_play=1,source=h264`
  → StartMirror / StopMirror. Stream: UDP 8888 (H.264) and 8890 (AAC/ADTS); 12-byte datagram header
  (byte 1 bit 0x80 = last datagram of frame, bytes 2-3 = LE sequence) + 12-byte frame header on the first
  datagram (LE type 1/5/7/10, timestamp ms, length). The first audio frame of a session has timestamp
  0xFFFFFFFF. The receiver's volume/mute keys don't change the mirrored sound.
