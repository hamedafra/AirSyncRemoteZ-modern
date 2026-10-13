# Air Sync Remote-Z for Windows

Native Windows version of *Air Sync Remote-Z* for Formuler Z-series / HiSilicon "Air Sync" receivers.
Windows 10 or 11, 64-bit; separate builds for Intel/AMD and ARM (e.g. Snapdragon) PCs.

- Finds the receiver on your network automatically (or type its IP).
- **Mirror**: the TV picture in the window with sound (H.264 and AAC decoded by Windows' Media Foundation), in
  lip sync: the sound is the clock and each video frame is shown when its sound is heard.
- **Full Screen** (F11): opens the picture full screen (on your other display if you have one); the app window
  stays open with all its controls.
- **Lock** (Ctrl+L): ignores keyboard, clicks on the picture and the remote panel, so nothing is changed on the
  receiver by accident.
- **Volume**: while mirroring, the remote's volume and mute keys change the sound on the PC (the receiver's own
  volume does not affect the mirrored sound). Slider in the top bar. Not mirroring, they go to the receiver.
- Click/drag on the picture = touch on the TV.
- Remote panel: power, mute, home, menu, D-pad/OK, back, info, volume, channel, color keys, numbers, play/stop,
  and a text field to type on the TV.
- Keyboard (click the picture first): arrows, Enter = OK, Esc = Back, Backspace/Delete, Home, PageUp/PageDown =
  channel, F1–F4 = red/green/yellow/blue, and any typed text goes to the receiver (handy for search boxes).
- Shortcuts: Ctrl+↑/↓ volume, Ctrl+Shift+↑/↓ channel, Ctrl+Shift+H home, Ctrl+Shift+M menu, Ctrl+Shift+I info,
  Ctrl+Shift+0 mute, Ctrl+Shift+R start/stop mirroring.

Only one remote can control the receiver at a time — connecting from the PC disconnects the phone app.

## Install
Download the installer for your PC from the [Releases page](https://github.com/hamedafra/Air-Sync-Remote-Z/releases):
- `Air-Sync-Remote-Z-Setup-x64.exe` — Intel/AMD PCs (most PCs).
- `Air-Sync-Remote-Z-Setup-arm64.exe` — ARM PCs (e.g. Snapdragon). Settings → System → About → "System type"
  says which one you have.

The installer is not signed, so Windows SmartScreen may warn: click **More info** → **Run anyway**.
It installs to `Program Files\Air Sync Remote-Z`, adds Start menu and desktop shortcuts, and allows the app
through Windows Firewall on private networks (needed to receive the mirrored picture and sound). Your Wi-Fi
network should be set to **Private** in Windows. Uninstall from Settings → Apps.
Running a newer installer updates the app in place.

## Build
Needs the .NET 10 SDK and NSIS (`makensis`); works on Windows, macOS or Linux:
`./build-installer.sh` → `publish/Air-Sync-Remote-Z-Setup-x64.exe` and `publish/Air-Sync-Remote-Z-Setup-arm64.exe`.
To just run it on Windows: `dotnet run`.

C# / WPF (no XAML). `Protocol/` — discovery, SOAP session, keys and touch; `Media/` — UDP stream reassembly,
Media Foundation decoders, WASAPI audio output (via NAudio) and the lip-sync clock; `UI/` — windows and controls.
The protocol is the same as the Mac version's, see [macos/README.md](../macos/README.md#protocol-as-implemented).

## Log
`%LOCALAPPDATA%\Air Sync Remote-Z\log.txt` (discovery, session, decoder and stream messages). Settings are
kept in `%APPDATA%\Air Sync Remote-Z\settings.json`.
