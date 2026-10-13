; Installer for Air Sync Remote-Z (Windows). Build with build-installer.sh (needs NSIS: brew install makensis),
; once per architecture: -DARCH=x64 (Intel/AMD) or -DARCH=arm64 (ARM).
; Installs to Program Files\Air Sync Remote-Z, adds Start menu and desktop shortcuts, lets the app receive the mirrored picture through the firewall on private networks,
; and registers an uninstaller in Settings > Apps.

Unicode true
!include MUI2.nsh
!include x64.nsh
!include LogicLib.nsh

!define APPNAME "Air Sync Remote-Z"
!define EXE "Air Sync Remote-Z.exe"
!define UNINSTKEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\AirSyncRemoteZ"
!ifndef VERSION
  !define VERSION "1.0.0"
!endif
!ifndef ARCH
  !error "define ARCH: -DARCH=x64 or -DARCH=arm64"
!endif
!if "${ARCH}" == "arm64"
  !define ARCHNAME "ARM"
!else
  !define ARCHNAME "Intel/AMD"
!endif
!define OUTFILE "publish\Air-Sync-Remote-Z-Setup-${ARCH}.exe"

Name "${APPNAME} (${ARCHNAME})"
OutFile "${OUTFILE}"
InstallDir "$PROGRAMFILES64\${APPNAME}"
RequestExecutionLevel admin
SetCompressor /SOLID lzma
SetCompressorDictSize 64
BrandingText "${APPNAME} ${VERSION}"

VIProductVersion "${VERSION}.0"
VIAddVersionKey "ProductName" "${APPNAME}"
VIAddVersionKey "FileDescription" "${APPNAME} Setup for ${ARCHNAME} PCs"
VIAddVersionKey "ProductVersion" "${VERSION}"
VIAddVersionKey "FileVersion" "${VERSION}"
VIAddVersionKey "LegalCopyright" "Unofficial community app for Formuler Z-series receivers"

!define MUI_ICON "Resources\AppIcon.ico"
!define MUI_UNICON "Resources\AppIcon.ico"
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_RUN "$INSTDIR\${EXE}"
!define MUI_FINISHPAGE_RUN_TEXT "Start ${APPNAME}"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

Function .onInit
  ${IfNot} ${RunningX64}
    MessageBox MB_ICONSTOP "${APPNAME} needs 64-bit Windows 10 or 11."
    Abort
  ${EndIf}
  !if "${ARCH}" == "arm64"
    ${IfNot} ${IsNativeARM64}
      MessageBox MB_ICONSTOP "This is the installer for ARM PCs (e.g. Snapdragon).$\r$\nThis PC has an Intel/AMD processor: please use Air-Sync-Remote-Z-Setup-x64.exe instead."
      Abort
    ${EndIf}
  !else
    ${If} ${IsNativeARM64}
      MessageBox MB_YESNO|MB_ICONQUESTION "This PC has an ARM processor. Air-Sync-Remote-Z-Setup-arm64.exe runs faster on it.$\r$\n$\r$\nInstall this Intel/AMD version anyway (it works through Windows' emulation)?" IDYES +2
      Abort
    ${EndIf}
  !endif
  SetRegView 64
  ; Always this folder (also if /D= is given), so replacing it on update can never touch anything else.
  StrCpy $INSTDIR "$PROGRAMFILES64\${APPNAME}"
FunctionEnd

Function un.onInit
  SetRegView 64
FunctionEnd

Section "Install"
  SetShellVarContext all
  ; An open copy would keep its files locked during an update.
  nsExec::Exec 'taskkill /IM "${EXE}" /F'
  Sleep 500
  ; The folder is fixed (no directory page), so replacing it whole is safe and removes files of older versions.
  RMDir /r "$INSTDIR"
  SetOutPath "$INSTDIR"
  File /r "publish\dir-${ARCH}\*.*"
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  CreateShortcut "$SMPROGRAMS\${APPNAME}.lnk" "$INSTDIR\${EXE}"
  CreateShortcut "$DESKTOP\${APPNAME}.lnk" "$INSTDIR\${EXE}"

  ; Let the receiver's picture and sound (UDP 8888/8890) and its event callbacks reach the app on private networks.
  nsExec::Exec 'netsh advfirewall firewall delete rule name="${APPNAME}"'
  nsExec::Exec 'netsh advfirewall firewall add rule name="${APPNAME}" dir=in action=allow program="$INSTDIR\${EXE}" enable=yes profile=private,domain'

  WriteRegStr HKLM "${UNINSTKEY}" "DisplayName" "${APPNAME}"
  WriteRegStr HKLM "${UNINSTKEY}" "DisplayVersion" "${VERSION}"
  WriteRegStr HKLM "${UNINSTKEY}" "Publisher" "Air Sync Remote-Z (unofficial)"
  WriteRegStr HKLM "${UNINSTKEY}" "DisplayIcon" "$INSTDIR\${EXE}"
  WriteRegStr HKLM "${UNINSTKEY}" "InstallLocation" "$INSTDIR"
  WriteRegStr HKLM "${UNINSTKEY}" "UninstallString" '"$INSTDIR\Uninstall.exe"'
  WriteRegStr HKLM "${UNINSTKEY}" "URLInfoAbout" "https://github.com/hamedafra/Air-Sync-Remote-Z"
  WriteRegDWORD HKLM "${UNINSTKEY}" "NoModify" 1
  WriteRegDWORD HKLM "${UNINSTKEY}" "NoRepair" 1
  WriteRegDWORD HKLM "${UNINSTKEY}" "EstimatedSize" 150000
SectionEnd

Section "Uninstall"
  SetShellVarContext all
  nsExec::Exec 'taskkill /IM "${EXE}" /F'
  Sleep 500
  nsExec::Exec 'netsh advfirewall firewall delete rule name="${APPNAME}"'
  Delete "$SMPROGRAMS\${APPNAME}.lnk"
  Delete "$DESKTOP\${APPNAME}.lnk"
  RMDir /r "$INSTDIR"
  DeleteRegKey HKLM "${UNINSTKEY}"
SectionEnd
