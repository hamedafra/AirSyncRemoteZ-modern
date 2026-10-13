import AppKit
import SwiftUI

@MainActor
final class AppModel: ObservableObject {
    let session = STBSession()
    let mirror = MirrorController()
    @Published var devices: [STBDevice] = []
    @Published var searching = false
    @Published var mirrorOn = false
    @Published var waitingForPicture = false
    @Published var muted = false {
        didSet { mirror.muted = muted }
    }
    /// Volume of the mirrored sound on this Mac. The STB's own volume does not affect the mirror stream, so
    /// while mirroring the remote's volume and mute keys control this instead (like the phone's volume does
    /// in the Android app).
    @Published var macVolume = UserDefaults.standard.object(forKey: "MirrorVolume") as? Double ?? 1 {
        didSet {
            mirror.volume = Float(macVolume)
            UserDefaults.standard.set(macVolume, forKey: "MirrorVolume")
        }
    }
    @Published var volumeIndicatorVisible = false
    private var hideVolumeIndicator: DispatchWorkItem?
    @Published var manualIP = UserDefaults.standard.string(forKey: "ManualIP") ?? ""
    /// Remote input is ignored (keyboard, clicks on the picture, remote panel, Remote menu) so nothing is
    /// changed by accident. Mirroring, sound, full screen and the lock itself keep working.
    @Published var controlsLocked = false
    /// The picture is shown in its own full-screen window (a separate Space, or the other display); the app
    /// window stays as it is with all its controls.
    @Published var fullScreen = false
    @Published var fullScreenControlsVisible = false
    var fullScreenControlsHovered = false
    private var hideControls: DispatchWorkItem?
    /// Where the picture view lives: the app window, or the full-screen window while that is open.
    let mainSlot = MirrorSlot()
    let fullScreenSlot = MirrorSlot()
    private var fullScreenWindow: NSWindow?
    private var fullScreenObservers: [NSObjectProtocol] = []
    @Published var message = ""
    let listenOnly = ProcessInfo.processInfo.environment["AIRSYNC_LISTEN_ONLY"] != nil

    init() {
        mirror.view.onKey = { [weak self] event in self?.handleKey(event) ?? false }
        mirror.view.onTouch = { [weak self] point, pressed in self?.touch(point, pressed: pressed) }
        mirror.onFirstFrame = { [weak self] in self?.waitingForPicture = false }
        mirror.volume = Float(macVolume)
        mirror.view.onMouseMove = { [weak self] in self?.showFullScreenControls() }
        mainSlot.adopt(mirror.view)
        // Test hook: show the picture without a receiver session (e.g. for a capture replay).
        if listenOnly, (try? mirror.start()) != nil {
            mirrorOn = true
            waitingForPicture = true
        }
    }

    func search() async {
        searching = true
        message = "Searching for receivers…"
        let found = await Discovery.search(timeout: 4)
        devices = found
        searching = false
        message = found.isEmpty ? "No receiver found. Enter its IP address instead." : ""
        if found.count == 1, session.state == .disconnected {
            await connect(found[0])
        } else if let last = UserDefaults.standard.string(forKey: "LastDevice"),
                  let d = found.first(where: { $0.id == last }), session.state == .disconnected {
            await connect(d)
        }
    }

    func connect(_ device: STBDevice) async {
        await stopMirror()
        message = ""
        await session.connect(to: device)
        if session.state == .connected {
            UserDefaults.standard.set(device.id, forKey: "LastDevice")
        }
    }

    func connectManual() async {
        let ip = manualIP.trimmingCharacters(in: .whitespaces)
        guard !ip.isEmpty else { return }
        UserDefaults.standard.set(ip, forKey: "ManualIP")
        await connect(STBDevice.manual(ip: ip))
    }

    func toggleMirror() async {
        if mirrorOn { await stopMirror() } else { await startMirror() }
    }

    func startMirror() async {
        guard session.state == .connected else { return }
        do {
            try mirror.start()
        } catch {
            message = "Cannot listen for the picture on UDP 8888/8890: \(error.localizedDescription)"
            return
        }
        mirrorOn = true
        waitingForPicture = true
        if await session.startMirror() == false {
            mirror.stop()
            mirrorOn = false
            waitingForPicture = false
        }
    }

    func stopMirror() async {
        guard mirrorOn else { return }
        mirrorOn = false
        waitingForPicture = false
        await session.stopMirror()
        mirror.stop()
    }

    func shutdown() async {
        await stopMirror()
        await session.disconnect()
    }

    func shutdownNow() {
        mirrorOn = false
        session.shutdownNow()
        mirror.stop()
    }

    func press(_ key: Key) {
        guard !controlsLocked else { return }
        if mirrorOn, adjustMacSound(key) { return }
        session.press(key)
    }

    /// While mirroring: volume up/down and mute change the sound played on this Mac. Returns false for other keys.
    private func adjustMacSound(_ key: Key) -> Bool {
        switch key {
        case .volumeUp:
            muted = false
            macVolume = min(1, (macVolume * 10).rounded() / 10 + 0.1)
        case .volumeDown:
            muted = false
            macVolume = max(0, (macVolume * 10).rounded() / 10 - 0.1)
        case .mute:
            muted.toggle()
        default:
            return false
        }
        volumeIndicatorVisible = true
        hideVolumeIndicator?.cancel()
        let work = DispatchWorkItem { [weak self] in self?.volumeIndicatorVisible = false }
        hideVolumeIndicator = work
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: work)
        return true
    }

    func type(_ text: String) {
        guard !controlsLocked else { return }
        session.type(text)
    }

    func toggleLock() {
        controlsLocked.toggle()
        if fullScreen { showFullScreenControls() }
    }

    // MARK: Full screen

    func toggleFullScreen() {
        if let w = fullScreenWindow {
            if w.isOnActiveSpace && w.styleMask.contains(.fullScreen) {
                // Animate out; the window closes when that is done. If the animation never completes, close anyway.
                w.toggleFullScreen(nil)
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self, weak w] in
                    if let w, self?.fullScreenWindow === w { self?.closeFullScreenWindow() }
                }
            } else {
                // Asked from the app window (another Space): closing the full-screen window also removes its Space.
                closeFullScreenWindow()
            }
        } else {
            openFullScreenWindow()
        }
    }

    /// Opens a separate window with only the picture and makes it full screen, on another display if there is
    /// one (so the app window with its controls stays in view), otherwise in a new Space.
    private func openFullScreenWindow() {
        let mainScreen = mainSlot.window?.screen ?? NSScreen.main
        let screen = NSScreen.screens.first { $0 != mainScreen } ?? mainScreen
        let w = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 1280, height: 720),
                         styleMask: [.titled, .closable, .miniaturizable, .resizable], backing: .buffered, defer: false)
        w.title = "\(session.device?.name ?? "Air Sync Remote-Z") — TV"
        w.isReleasedWhenClosed = false
        w.backgroundColor = .black
        w.collectionBehavior = [.fullScreenPrimary]
        w.contentView = NSHostingView(rootView: FullScreenMirrorView().environmentObject(self).environmentObject(session))
        if let screen { w.setFrame(screen.visibleFrame, display: false) }
        fullScreenSlot.adopt(mirror.view)
        fullScreenWindow = w
        fullScreen = true
        let center = NotificationCenter.default
        fullScreenObservers = [
            center.addObserver(forName: NSWindow.didExitFullScreenNotification, object: w, queue: .main) { [weak self] _ in
                MainActor.assumeIsolated { self?.closeFullScreenWindow() }
            },
            center.addObserver(forName: NSWindow.willCloseNotification, object: w, queue: .main) { [weak self] _ in
                MainActor.assumeIsolated { self?.closeFullScreenWindow() }
            },
        ]
        w.makeKeyAndOrderFront(nil)
        w.makeFirstResponder(mirror.view)
        w.toggleFullScreen(nil)
        showFullScreenControls()
    }

    /// Puts the picture back into the app window and closes the full-screen window.
    private func closeFullScreenWindow() {
        guard let w = fullScreenWindow else { return }
        fullScreenWindow = nil
        fullScreenObservers.forEach { NotificationCenter.default.removeObserver($0) }
        fullScreenObservers = []
        hideControls?.cancel()
        fullScreenControlsVisible = false
        fullScreen = false
        mainSlot.adopt(mirror.view)
        w.orderOut(nil)
        w.close()
        if let main = mainSlot.window {
            main.makeKeyAndOrderFront(nil)
            main.makeFirstResponder(mirror.view)
        }
    }

    /// Shows the exit button for a moment after the mouse moves; then hides it and the cursor.
    func showFullScreenControls() {
        guard fullScreen else { return }
        fullScreenControlsVisible = true
        hideControls?.cancel()
        let work = DispatchWorkItem { [weak self] in
            guard let self, self.fullScreen else { return }
            if self.fullScreenControlsHovered {
                self.showFullScreenControls()
                return
            }
            self.fullScreenControlsVisible = false
            NSCursor.setHiddenUntilMouseMoves(true)
        }
        hideControls = work
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: work)
    }

    private func touch(_ p: CGPoint, pressed: Bool) {
        guard session.state == .connected, !controlsLocked else { return }
        session.touch(x: Int32((p.x * 1279).rounded()), y: Int32((p.y * 719).rounded()), pressed: pressed)
    }

    /// Mac keyboard → remote. Returns false to let the menu handle shortcuts.
    func handleKey(_ e: NSEvent) -> Bool {
        if e.modifierFlags.contains(.command) { return false }
        if controlsLocked {
            showFullScreenControls() // in full screen, show that the controls are locked
            return true // swallow the key (no beep), send nothing
        }
        guard session.state == .connected else { return false }
        switch e.keyCode {
        case 123: press(.left)
        case 124: press(.right)
        case 125: press(.down)
        case 126: press(.up)
        case 36, 76: press(.ok)
        case 53: press(.back)
        case 51, 117: press(.delete)
        case 115: press(.home)
        case 116: press(.channelUp)
        case 121: press(.channelDown)
        case 122: press(.red)
        case 120: press(.green)
        case 99: press(.yellow)
        case 118: press(.blue)
        default:
            guard let chars = e.characters, !chars.isEmpty else { return false }
            type(chars)
        }
        return true
    }
}

final class AppDelegate: NSObject, NSApplicationDelegate {
    var model: AppModel?

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool { true }

    func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
        guard let model else { return .terminateNow }
        MainActor.assumeIsolated { model.shutdownNow() }
        return .terminateNow
    }
}

struct AirSyncApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var delegate
    @StateObject private var model = AppModel()

    var body: some Scene {
        WindowGroup("Air Sync Remote-Z") {
            ContentView()
                .environmentObject(model)
                .environmentObject(model.session)
                .onAppear {
                    delegate.model = model
                    Snapshot.scheduleIfRequested(mirrorView: model.mirror.view)
                }
        }
        .defaultSize(width: 1180, height: 640)
        .commands {
            CommandMenu("Remote") {
                Button("Home") { model.press(.home) }.keyboardShortcut("h", modifiers: [.command, .shift])
                Button("Menu") { model.press(.menu) }.keyboardShortcut("m", modifiers: [.command, .shift])
                Button("Back") { model.press(.back) }.keyboardShortcut("[", modifiers: .command)
                Button("Info") { model.press(.info) }.keyboardShortcut("i", modifiers: [.command, .shift])
                Divider()
                Button("Volume Up") { model.press(.volumeUp) }.keyboardShortcut(.upArrow, modifiers: .command)
                Button("Volume Down") { model.press(.volumeDown) }.keyboardShortcut(.downArrow, modifiers: .command)
                Button("Mute") { model.press(.mute) }.keyboardShortcut("0", modifiers: [.command, .shift])
                Button("Channel Up") { model.press(.channelUp) }.keyboardShortcut(.upArrow, modifiers: [.command, .shift])
                Button("Channel Down") { model.press(.channelDown) }.keyboardShortcut(.downArrow, modifiers: [.command, .shift])
                Divider()
                Button(model.mirrorOn ? "Stop Mirroring" : "Start Mirroring") { Task { await model.toggleMirror() } }
                    .keyboardShortcut("r", modifiers: [.command, .shift])
                Button("Standby") { model.press(.power) }
                Divider()
                Button(model.controlsLocked ? "Unlock Controls" : "Lock Controls") { model.toggleLock() }
                    .keyboardShortcut("l", modifiers: .command)
            }
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var model: AppModel
    @EnvironmentObject var session: STBSession

    var body: some View {
        VStack(spacing: 0) {
            TopBar()
            Divider()
            HStack(spacing: 0) {
                ZStack {
                    MirrorSlotRep(slot: model.mainSlot)
                    if model.fullScreen {
                        PictureIsFullScreen()
                    } else {
                        if !model.mirrorOn || model.waitingForPicture {
                            MirrorPlaceholder()
                        }
                        if model.volumeIndicatorVisible {
                            VolumeIndicator()
                        }
                    }
                }
                .frame(minWidth: 480, minHeight: 300)
                Divider()
                RemotePanel()
                    .frame(width: 290)
                    .disabled(session.state != .connected || model.controlsLocked)
                    .overlay(alignment: .top) {
                        if model.controlsLocked { LockedBanner().padding(.top, 8) }
                    }
            }
        }
        .task { if model.devices.isEmpty && !model.listenOnly { await model.search() } }
    }
}

struct TopBar: View {
    @EnvironmentObject var model: AppModel
    @EnvironmentObject var session: STBSession

    var body: some View {
        HStack(spacing: 10) {
            Menu {
                ForEach(model.devices) { d in
                    Button("\(d.name)  (\(d.ip))") { Task { await model.connect(d) } }
                }
                if !model.devices.isEmpty { Divider() }
                Button("Search Again") { Task { await model.search() } }
                if session.state == .connected {
                    Button("Disconnect") { Task { await model.shutdown() } }
                }
            } label: {
                Label(session.device?.name ?? "Choose Receiver", systemImage: "tv")
            }
            .fixedSize()

            TextField("Receiver IP", text: $model.manualIP)
                .textFieldStyle(.roundedBorder)
                .frame(width: 130)
                .onSubmit { Task { await model.connectManual() } }
            Button("Connect") { Task { await model.connectManual() } }
                .disabled(model.manualIP.isEmpty)

            StatusDot(state: session.state)
            Text(statusText)
                .font(.callout)
                .foregroundStyle(.secondary)
                .lineLimit(1)
                .truncationMode(.tail)
            Spacer()
            if model.searching { ProgressView().controlSize(.small) }
            Toggle(isOn: Binding(get: { !model.muted }, set: { model.muted = !$0 })) {
                Image(systemName: model.muted ? "speaker.slash" : "speaker.wave.2")
            }
            .toggleStyle(.button)
            .help("Play the receiver's sound on this Mac")
            Slider(value: $model.macVolume, in: 0 ... 1)
                .frame(width: 90)
                .disabled(model.muted)
                .help("Volume of the receiver's sound on this Mac. While mirroring, the remote's volume and mute keys change this.")
            LockButton()
            Button {
                model.toggleFullScreen()
            } label: {
                Label(model.fullScreen ? "Exit Full Screen" : "Full Screen",
                      systemImage: model.fullScreen ? "arrow.down.right.and.arrow.up.left" : "arrow.up.left.and.arrow.down.right")
            }
            .help("Show the TV picture full screen in its own Space (or on your other display); this window stays with all the controls.")
            Button {
                Task { await model.toggleMirror() }
            } label: {
                Label(model.mirrorOn ? "Stop Mirror" : "Mirror", systemImage: model.mirrorOn ? "stop.circle" : "rectangle.on.rectangle")
            }
            .buttonStyle(.borderedProminent)
            .tint(model.mirrorOn ? .red : .accentColor)
            .disabled(session.state != .connected)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
    }

    private var statusText: String {
        if !model.message.isEmpty { return model.message }
        switch session.state {
        case .failed(let m): return m
        case .connecting: return session.status
        case .connected: return session.status
        case .disconnected: return "Not connected"
        }
    }
}

struct StatusDot: View {
    let state: SessionState
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 9, height: 9)
    }

    private var color: Color {
        switch state {
        case .connected: return .green
        case .connecting: return .yellow
        case .failed: return .red
        case .disconnected: return .gray
        }
    }
}

struct MirrorPlaceholder: View {
    @EnvironmentObject var model: AppModel
    @EnvironmentObject var session: STBSession

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "tv")
                .font(.system(size: 54, weight: .light))
            Text(title).font(.title3)
            Text("Click here, then use your keyboard: arrows, Return = OK, Esc = Back, typing goes to the receiver.")
                .font(.callout)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 360)
        }
        .foregroundStyle(.white.opacity(0.75))
        .allowsHitTesting(false)
    }

    private var title: String {
        if model.waitingForPicture { return "Waiting for the receiver's picture…" }
        return session.state == .connected ? "Press Mirror to see the TV here" : "Connect to a receiver"
    }
}

/// Shows the Mac's mirror volume for a moment after a volume / mute key (like the receiver's own volume bar).
struct VolumeIndicator: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image(systemName: model.muted ? "speaker.slash.fill" : "speaker.wave.2.fill")
                    .frame(width: 26)
                ProgressView(value: model.muted ? 0 : model.macVolume)
                    .frame(width: 220)
                Text(model.muted ? "Muted" : "\(Int((model.macVolume * 100).rounded()))")
                    .monospacedDigit()
                    .frame(width: 52, alignment: .trailing)
            }
            .font(.title3)
            .padding(.horizontal, 18)
            .padding(.vertical, 10)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.black.opacity(0.75)))
            .foregroundStyle(.white)
            .padding(.top, 28)
            Spacer()
        }
        .allowsHitTesting(false)
    }
}

/// Locks / unlocks the remote controls (⌘L).
struct LockButton: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        Button {
            model.toggleLock()
        } label: {
            Label(model.controlsLocked ? "Locked" : "Lock",
                  systemImage: model.controlsLocked ? "lock.fill" : "lock.open")
        }
        .buttonStyle(.borderedProminent)
        .tint(model.controlsLocked ? .orange : .gray.opacity(0.6))
        .help(model.controlsLocked
              ? "Controls are locked: keyboard and clicks are not sent to the receiver. Click (or ⌘L) to unlock."
              : "Lock the controls so accidental clicks or typing don't change anything on the receiver (⌘L).")
    }
}

struct LockedBanner: View {
    var body: some View {
        Label("Controls locked", systemImage: "lock.fill")
            .font(.callout.weight(.medium))
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Capsule().fill(Color.orange.opacity(0.9)))
            .foregroundStyle(.white)
    }
}

/// Shown over the full-screen picture for a moment after the mouse moves.
struct FullScreenControls: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Spacer()
                LockButton()
                    .controlSize(.large)
                    .onHover { model.fullScreenControlsHovered = $0 }
                Button {
                    model.toggleFullScreen()
                } label: {
                    Label("Exit Full Screen", systemImage: "arrow.down.right.and.arrow.up.left")
                        .padding(.horizontal, 6)
                        .padding(.vertical, 3)
                }
                .buttonStyle(.borderedProminent)
                .tint(.black.opacity(0.6))
                .onHover { model.fullScreenControlsHovered = $0 }
            }
            Spacer()
        }
        .padding(24)
    }
}

/// The full-screen window's content: only the picture (plus the volume bar and, after a mouse move, the
/// lock and exit buttons).
struct FullScreenMirrorView: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        ZStack {
            Color.black
            MirrorSlotRep(slot: model.fullScreenSlot)
            if !model.mirrorOn || model.waitingForPicture {
                MirrorPlaceholder()
            }
            if model.volumeIndicatorVisible {
                VolumeIndicator()
            }
            if model.fullScreenControlsVisible {
                FullScreenControls()
            }
        }
        .ignoresSafeArea()
    }
}

/// Shown in the app window where the picture was, while the picture is full screen.
struct PictureIsFullScreen: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "arrow.up.left.and.arrow.down.right")
                .font(.system(size: 40, weight: .light))
            Text("The TV picture is shown full screen").font(.title3)
            Text("Switch to it with Mission Control or ⌃← / ⌃→. The controls here keep working.")
                .font(.callout)
                .multilineTextAlignment(.center)
            Button("Exit Full Screen") { model.toggleFullScreen() }
        }
        .foregroundStyle(.white.opacity(0.8))
        .padding()
    }
}

/// A container the picture view can be moved into (the app window or the full-screen window).
final class MirrorSlot: NSView {
    override init(frame: NSRect) {
        super.init(frame: frame)
        wantsLayer = true
        layer?.backgroundColor = NSColor.black.cgColor
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) is not supported") }

    func adopt(_ view: NSView) {
        guard view.superview !== self else { return }
        view.removeFromSuperview()
        view.frame = bounds
        view.autoresizingMask = [.width, .height]
        addSubview(view)
    }
}

struct MirrorSlotRep: NSViewRepresentable {
    let slot: MirrorSlot
    func makeNSView(context: Context) -> MirrorSlot { slot }
    func updateNSView(_ nsView: MirrorSlot, context: Context) {}
}

// MARK: - Remote panel

struct RemotePanel: View {
    @EnvironmentObject var model: AppModel
    @StateObject private var input = TextInput()

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                HStack(spacing: 10) {
                    RoundKey(symbol: "power", tint: .red) { model.press(.power) }.help("Standby")
                    RoundKey(symbol: "speaker.slash.fill") { model.press(.mute) }.help("Mute")
                    RoundKey(symbol: "house.fill") { model.press(.home) }.help("Home")
                    RoundKey(symbol: "line.3.horizontal") { model.press(.menu) }.help("Menu")
                }

                DPad()

                HStack(spacing: 10) {
                    WideKey(label: "Back", symbol: "arrow.uturn.backward") { model.press(.back) }
                    WideKey(label: "Info", symbol: "info.circle") { model.press(.info) }
                }

                HStack(spacing: 24) {
                    Rocker(title: "VOL", up: { model.press(.volumeUp) }, down: { model.press(.volumeDown) })
                    Rocker(title: "CH", up: { model.press(.channelUp) }, down: { model.press(.channelDown) })
                }

                HStack(spacing: 8) {
                    ColorKey(color: .red) { model.press(.red) }
                    ColorKey(color: .green) { model.press(.green) }
                    ColorKey(color: .yellow) { model.press(.yellow) }
                    ColorKey(color: .blue) { model.press(.blue) }
                }

                NumberPad()

                HStack(spacing: 10) {
                    RoundKey(symbol: "playpause.fill") { model.press(.playPause) }.help("Play / Pause")
                    RoundKey(symbol: "stop.fill") { model.press(.stop) }.help("Stop")
                }

                VStack(alignment: .leading, spacing: 6) {
                    Text("Type on the TV").font(.caption).foregroundStyle(.secondary)
                    HStack {
                        TextField("Search text…", text: $input.text)
                            .textFieldStyle(.roundedBorder)
                            .onSubmit(send)
                        Button("Send", action: send).disabled(input.text.isEmpty)
                    }
                }
            }
            .padding(16)
        }
        .background(Color(nsColor: .underPageBackgroundColor))
    }

    private func send() {
        model.type(input.text)
        input.text = ""
    }
}

final class TextInput: ObservableObject {
    @Published var text = ""
}

struct DPad: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        ZStack {
            Circle()
                .fill(Color(nsColor: .controlBackgroundColor))
                .overlay(Circle().stroke(Color.secondary.opacity(0.3)))
                .frame(width: 190, height: 190)
            VStack(spacing: 0) {
                arrow("chevron.up", .up)
                HStack(spacing: 0) {
                    arrow("chevron.left", .left)
                    Button { model.press(.ok) } label: {
                        Text("OK").font(.headline)
                            .frame(width: 64, height: 64)
                            .background(Circle().fill(Color.accentColor))
                            .foregroundStyle(.white)
                    }
                    .buttonStyle(.plain)
                    arrow("chevron.right", .right)
                }
                arrow("chevron.down", .down)
            }
        }
    }

    private func arrow(_ symbol: String, _ key: Key) -> some View {
        Button { model.press(key) } label: {
            Image(systemName: symbol)
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 60, height: 60)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

struct NumberPad: View {
    @EnvironmentObject var model: AppModel

    var body: some View {
        let rows = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        VStack(spacing: 8) {
            ForEach(rows, id: \.self) { row in
                HStack(spacing: 8) {
                    ForEach(row, id: \.self) { n in digit(n) }
                }
            }
            HStack(spacing: 8) {
                PadKey(content: AnyView(Image(systemName: "delete.left"))) { model.press(.delete) }
                digit(0)
                PadKey(content: AnyView(Text("OK"))) { model.press(.ok) }
            }
        }
    }

    private func digit(_ n: Int) -> some View {
        PadKey(content: AnyView(Text("\(n)"))) { model.press(.digit(n)) }
    }
}

struct PadKey: View {
    let content: AnyView
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            content
                .font(.system(size: 17, weight: .medium))
                .frame(width: 70, height: 36)
                .background(RoundedRectangle(cornerRadius: 8).fill(Color(nsColor: .controlBackgroundColor)))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary.opacity(0.25)))
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

struct RoundKey: View {
    let symbol: String
    var tint: Color = .primary
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: symbol)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(tint)
                .frame(width: 48, height: 48)
                .background(Circle().fill(Color(nsColor: .controlBackgroundColor)))
                .overlay(Circle().stroke(Color.secondary.opacity(0.25)))
                .contentShape(Circle())
        }
        .buttonStyle(.plain)
    }
}

struct WideKey: View {
    let label: String
    let symbol: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Label(label, systemImage: symbol)
                .frame(width: 112, height: 34)
                .background(RoundedRectangle(cornerRadius: 17).fill(Color(nsColor: .controlBackgroundColor)))
                .overlay(RoundedRectangle(cornerRadius: 17).stroke(Color.secondary.opacity(0.25)))
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

struct Rocker: View {
    let title: String
    let up: () -> Void
    let down: () -> Void
    var body: some View {
        VStack(spacing: 0) {
            Button(action: up) { Image(systemName: "plus").frame(width: 56, height: 40).contentShape(Rectangle()) }
                .buttonStyle(.plain)
            Text(title).font(.caption.bold()).foregroundStyle(.secondary)
            Button(action: down) { Image(systemName: "minus").frame(width: 56, height: 40).contentShape(Rectangle()) }
                .buttonStyle(.plain)
        }
        .background(Capsule().fill(Color(nsColor: .controlBackgroundColor)))
        .overlay(Capsule().stroke(Color.secondary.opacity(0.25)))
    }
}

struct ColorKey: View {
    let color: Color
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Capsule().fill(color).frame(width: 52, height: 16)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}
