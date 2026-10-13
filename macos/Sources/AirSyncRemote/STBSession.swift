import Darwin
import Foundation

/// Linux input key codes the STB understands (sent through the Vinput channel).
enum Key: Int32 {
    case home = 102, menu = 139, back = 158, ok = 28
    case up = 103, down = 108, left = 105, right = 106
    case volumeUp = 115, volumeDown = 114, mute = 113, power = 116
    case channelUp = 402, channelDown = 403
    case red = 59, green = 60, yellow = 61, blue = 62
    case playPause = 164, stop = 128, info = 358
    case delete = 14, space = 57
    case digit1 = 2, digit2, digit3, digit4, digit5, digit6, digit7, digit8, digit9, digit0

    static func digit(_ n: Int) -> Key { n == 0 ? .digit0 : Key(rawValue: Int32(n + 1))! }
}

enum CharacterKeys {
    static let shift: Int32 = 42
    private static let plain: [Character: Int32] = {
        var m: [Character: Int32] = [:]
        let letters: [(Character, Int32)] = [("a", 30), ("b", 48), ("c", 46), ("d", 32), ("e", 18), ("f", 33), ("g", 34),
                                             ("h", 35), ("i", 23), ("j", 36), ("k", 37), ("l", 38), ("m", 50), ("n", 49),
                                             ("o", 24), ("p", 25), ("q", 16), ("r", 19), ("s", 31), ("t", 20), ("u", 22),
                                             ("v", 47), ("w", 17), ("x", 45), ("y", 21), ("z", 44)]
        for (c, k) in letters { m[c] = k }
        for (i, c) in "1234567890".enumerated() { m[c] = Int32(i + 2) }
        let other: [(Character, Int32)] = [("-", 12), ("=", 13), ("[", 26), ("]", 27), (";", 39), ("'", 40), ("`", 41),
                                           ("\\", 43), (",", 51), (".", 52), ("/", 53), (" ", 57), ("\n", 28), ("\t", 15)]
        for (c, k) in other { m[c] = k }
        return m
    }()
    private static let shifted: [Character: Character] = [
        "!": "1", "@": "2", "#": "3", "$": "4", "%": "5", "^": "6", "&": "7", "*": "8", "(": "9", ")": "0",
        "_": "-", "+": "=", "{": "[", "}": "]", ":": ";", "\"": "'", "~": "`", "|": "\\", "<": ",", ">": ".", "?": "/",
    ]

    /// Key code and whether shift is needed for a character on a US layout.
    static func code(for c: Character) -> (Int32, Bool)? {
        if let k = plain[c] { return (k, false) }
        if c.isUppercase, let lower = c.lowercased().first, let k = plain[lower] { return (k, true) }
        if let base = shifted[c], let k = plain[base] { return (k, true) }
        return nil
    }
}

enum SessionState: Equatable {
    case disconnected
    case connecting
    case connected
    case failed(String)
}

/// Talks to the STB the way the Android app does: UPnP SOAP for the session and mirror, UDP for keys and touch.
@MainActor
final class STBSession: ObservableObject {
    @Published private(set) var state: SessionState = .disconnected
    @Published private(set) var device: STBDevice?
    @Published private(set) var status = ""
    @Published private(set) var mirroring = false

    private(set) var localIP = ""
    private var supportVideo = "h264"
    private var vinputPort: UInt16 = 8822
    private var keySocket: Int32 = -1
    private var keyAddr = sockaddr_in()
    private var pingTask: Task<Void, Never>?
    private var renewTask: Task<Void, Never>?
    private var subscriptionID: String?
    private let events = EventServer()
    private var scpdCache: [String: [String: [String]]] = [:]

    let remoteID: String = {
        let key = "RemoteID"
        if let id = UserDefaults.standard.string(forKey: key) { return id }
        // Locally administered MAC-style ID, stable per install (the Android app sends the WiFi MAC).
        let bytes = [0x02] + (0 ..< 5).map { _ in Int.random(in: 0 ... 255) }
        let id = bytes.map { String(format: "%02x", $0) }.joined(separator: ":")
        UserDefaults.standard.set(id, forKey: key)
        return id
    }()

    // MARK: - Connection

    func connect(to dev: STBDevice) async {
        await disconnect()
        device = dev
        state = .connecting
        status = "Connecting to \(dev.name)…"
        guard let ip = NetworkInfo.localAddress(toward: dev.ip) else {
            state = .failed("No network route to \(dev.ip)")
            return
        }
        localIP = ip
        do {
            try await hello()
            vinputPort = (try? await queryPort(service: "VinputControlServer", variable: "HI_UPNP_VAR_VinpuServerURI")) ?? 8822
            openKeySocket()
            state = .connected
            status = "Connected to \(dev.name)"
            startPing()
            await subscribe()
        } catch {
            state = .failed("Could not connect: \(error.localizedDescription)")
            status = ""
        }
    }

    func disconnect() async {
        pingTask?.cancel()
        pingTask = nil
        renewTask?.cancel()
        renewTask = nil
        guard device != nil, state == .connected else {
            cleanup()
            return
        }
        if mirroring { await stopMirror() }
        _ = try? await soap("AccessControlServer", "Byebye", [("RemoteID", remoteID)], timeout: 3)
        if let sid = subscriptionID, let url = device?.service("AccessControlServer")?.eventSubURL {
            var req = URLRequest(url: url, timeoutInterval: 3)
            req.httpMethod = "UNSUBSCRIBE"
            req.setValue(sid, forHTTPHeaderField: "SID")
            _ = try? await URLSession.shared.data(for: req)
        }
        cleanup()
    }

    /// Blocking, time-limited goodbye for app termination (async tasks don't run while the app is quitting).
    func shutdownNow() {
        pingTask?.cancel()
        pingTask = nil
        renewTask?.cancel()
        renewTask = nil
        guard let dev = device, state == .connected else {
            cleanup()
            return
        }
        var requests: [URLRequest] = []
        let id = [("RemoteID", remoteID)]
        if mirroring, let svc = dev.service("MirrorControlServer") { requests.append(soapRequest(svc, "StopMirror", id, timeout: 2)) }
        if let svc = dev.service("AccessControlServer") { requests.append(soapRequest(svc, "Byebye", id, timeout: 2)) }
        if let sid = subscriptionID, let url = dev.service("AccessControlServer")?.eventSubURL {
            var r = URLRequest(url: url, timeoutInterval: 2)
            r.httpMethod = "UNSUBSCRIBE"
            r.setValue(sid, forHTTPHeaderField: "SID")
            requests.append(r)
        }
        let done = DispatchSemaphore(value: 0)
        DispatchQueue.global(qos: .userInitiated).async {
            for r in requests {
                let one = DispatchSemaphore(value: 0)
                URLSession.shared.dataTask(with: r) { _, _, _ in one.signal() }.resume()
                _ = one.wait(timeout: .now() + 2)
            }
            done.signal()
        }
        _ = done.wait(timeout: .now() + 5)
        cleanup()
    }

    private func cleanup() {
        events.stop()
        subscriptionID = nil
        if keySocket >= 0 { close(keySocket); keySocket = -1 }
        state = .disconnected
        status = ""
        mirroring = false
    }

    private func hello() async throws {
        let model = sysctlString("hw.model") ?? "Mac"
        let resp = try await soap("AccessControlServer", "Hello", [
            ("RemoteID", remoteID), ("RemoteIP", localIP), ("Version", "3.0.1.0"),
            ("DeviceInfo", model), ("SDKVersion", "28"),
        ], timeout: 4)
        let current = resp.find("CurrentRemoteID")?.trimmedText ?? ""
        guard current.isEmpty || current == remoteID else {
            throw SessionError.message("the receiver is controlled by another remote (\(current))")
        }
        if let v = resp.find("SupportVideo")?.trimmedText, !v.isEmpty { supportVideo = v }
    }

    private func queryPort(service: String, variable: String) async throws -> UInt16 {
        guard let svc = device?.service(service) else { throw SessionError.message("no \(service)") }
        let ns = "urn:schemas-upnp-org:control-1-0"
        let body = "<u:QueryStateVariable xmlns:u=\"\(ns)\"><u:varName>\(variable)</u:varName></u:QueryStateVariable>"
        let resp = try await post(svc.controlURL, soapAction: "\(ns)#QueryStateVariable", body: body, timeout: 4)
        let value = resp.find("return")?.trimmedText ?? resp.children.first?.trimmedText ?? ""
        let parts = value.split(separator: ":")
        guard parts.count >= 3, let port = UInt16(parts[2].filter(\.isNumber)) else {
            throw SessionError.message("bad \(variable): \(value)")
        }
        return port
    }

    private func startPing() {
        pingTask = Task { [weak self] in
            let start = Date()
            var failures = 0
            while !Task.isCancelled {
                guard let self else { return }
                let pingTime = String(Int(Date().timeIntervalSince(start) * 1000))
                do {
                    let resp = try await self.soap("AccessControlServer", "Ping",
                                                   [("RemoteID", self.remoteID), ("PingTime", pingTime)], timeout: 5)
                    failures = 0
                    let owner = (resp.find("CurrentRemoteID") ?? resp.children.first)?.trimmedText ?? self.remoteID
                    if owner != self.remoteID && owner != "0.0.0.0" && !owner.isEmpty {
                        self.lost(owner == "0.0.0.1" ? "The receiver went to standby" :
                                  owner.contains("OFF") ? "The receiver left" : "Another remote took over the receiver")
                        return
                    }
                    if self.state != .connected { self.state = .connected }
                    self.status = "Connected to \(self.device?.name ?? "")"
                } catch {
                    failures += 1
                    if failures >= 5 {
                        self.status = "Connection unstable, reconnecting…"
                        _ = try? await self.hello()
                    }
                    if failures >= 15 {
                        self.lost("Connection to the receiver lost")
                        return
                    }
                }
                try? await Task.sleep(nanoseconds: 1_500_000_000)
            }
        }
    }

    private func lost(_ reason: String) {
        NSLog("session lost: %@", reason)
        pingTask?.cancel()
        pingTask = nil
        renewTask?.cancel()
        events.stop()
        mirroring = false
        state = .failed(reason)
        status = ""
    }

    // MARK: - Events (GENA)

    private func subscribe() async {
        guard let url = device?.service("AccessControlServer")?.eventSubURL,
              let port = events.start(onNotify: { [weak self] body in
                  Task { @MainActor in self?.handleNotify(body) }
              }) else { return }
        var req = URLRequest(url: url, timeoutInterval: 4)
        req.httpMethod = "SUBSCRIBE"
        req.setValue("<http://\(localIP):\(port)/evetSub>", forHTTPHeaderField: "CALLBACK")
        req.setValue("upnp:event", forHTTPHeaderField: "NT")
        req.setValue("infinite", forHTTPHeaderField: "TIMEOUT")
        if let (_, resp) = try? await URLSession.shared.data(for: req), let http = resp as? HTTPURLResponse {
            subscriptionID = http.value(forHTTPHeaderField: "SID")
        }
        renewTask = Task { [weak self] in
            while !Task.isCancelled {
                try? await Task.sleep(nanoseconds: 140_000_000_000)
                guard let self, let sid = self.subscriptionID else { return }
                var r = URLRequest(url: url, timeoutInterval: 4)
                r.httpMethod = "SUBSCRIBE"
                r.setValue(sid, forHTTPHeaderField: "SID")
                r.setValue("infinite", forHTTPHeaderField: "TIMEOUT")
                _ = try? await URLSession.shared.data(for: r)
            }
        }
    }

    private func handleNotify(_ body: String) {
        guard let data = body.data(using: .utf8), let root = XMLNode.parse(data),
              let list = root.find("HI_UPNP_VAR_AccessRemoteList")?.trimmedText, !list.isEmpty else { return }
        if list != remoteID && list != "0.0.0.0" {
            lost(list == "0.0.0.1" ? "The receiver went to standby" : "Another remote took over the receiver")
        }
    }

    // MARK: - Mirror

    func startMirror(parameter: String? = nil) async -> Bool {
        guard state == .connected else { return false }
        let param = parameter ?? "fps=15,resend=0,cip=\(localIP),cport=8888,video_play=1,source=\(supportVideo)"
        do {
            _ = try await soap("MirrorControlServer", "SetMirrorParameter", [("RemoteID", remoteID), ("MirrorParameter", param)], timeout: 4)
            _ = try await soap("MirrorControlServer", "StartMirror", [("RemoteID", remoteID)], timeout: 4)
            mirroring = true
            return true
        } catch {
            status = "Mirror failed: \(error.localizedDescription)"
            return false
        }
    }

    func stopMirror() async {
        mirroring = false
        _ = try? await soap("MirrorControlServer", "StopMirror", [("RemoteID", remoteID)], timeout: 3)
    }

    // MARK: - Keys and touch (UDP to the Vinput port)

    private func openKeySocket() {
        if keySocket >= 0 { close(keySocket) }
        keySocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
        keyAddr = sockaddr_in()
        keyAddr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        keyAddr.sin_family = sa_family_t(AF_INET)
        keyAddr.sin_port = vinputPort.bigEndian
        inet_pton(AF_INET, device?.ip ?? "0.0.0.0", &keyAddr.sin_addr)
    }

    private func sendUDP(_ bytes: [UInt8]) {
        guard keySocket >= 0 else { return }
        var addr = keyAddr
        let sent = bytes.withUnsafeBytes { b in
            withUnsafePointer(to: &addr) {
                $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                    sendto(keySocket, b.baseAddress, b.count, 0, $0, socklen_t(MemoryLayout<sockaddr_in>.size))
                }
            }
        }
        if sent < 0 {
            NSLog("key/touch packet to %@:%d not sent: %s", device?.ip ?? "?", Int(vinputPort), strerror(errno))
        } else if ProcessInfo.processInfo.environment["AIRSYNC_DEBUG"] != nil {
            NSLog("UDP -> %@:%d %@", device?.ip ?? "?", Int(vinputPort), bytes.map { String(format: "%02x", $0) }.joined(separator: " "))
        }
    }

    private static func header(type: UInt16, length: UInt16) -> [UInt8] {
        var h: [UInt8] = []
        for v: UInt16 in [1, 2, type, length, 0, 0] { h += [UInt8(v & 0xff), UInt8(v >> 8)] }
        return h
    }

    private static func le32(_ v: Int32) -> [UInt8] {
        let u = UInt32(bitPattern: v)
        return [UInt8(u & 0xff), UInt8(u >> 8 & 0xff), UInt8(u >> 16 & 0xff), UInt8(u >> 24)]
    }

    func sendKeyCode(_ code: Int32, down: Bool) {
        let packet = Self.header(type: 2, length: 22) + [0x07, 0x01] + Self.le32(code) + Self.le32(down ? 1 : 0)
        sendUDP(packet)
    }

    func press(_ key: Key) {
        sendKeyCode(key.rawValue, down: true)
        sendKeyCode(key.rawValue, down: false)
    }

    func type(_ text: String) {
        for c in text {
            guard let (code, shift) = CharacterKeys.code(for: c) else { continue }
            if shift { sendKeyCode(CharacterKeys.shift, down: true) }
            sendKeyCode(code, down: true)
            sendKeyCode(code, down: false)
            if shift { sendKeyCode(CharacterKeys.shift, down: false) }
        }
    }

    /// Touch on the mirrored screen, in STB coordinates (0...1279, 0...719).
    func touch(x: Int32, y: Int32, pressed: Bool) {
        var p = Self.header(type: 4, length: 76) + Self.le32(2)
        p += Self.le32(x) + Self.le32(y) + Self.le32(pressed ? 1 : 0)
        p += [UInt8](repeating: 0, count: 4 * 12)
        sendUDP(p)
        if !pressed { sendUDP(p) } // the app sends release twice
    }

    // MARK: - SOAP

    private func soap(_ service: String, _ action: String, _ args: [(String, String)], timeout: TimeInterval) async throws -> XMLNode {
        guard let svc = device?.service(service) else { throw SessionError.message("receiver has no \(service)") }
        let ordered = await orderedArgs(svc, action: action, args: args)
        let root = try await send(soapRequest(svc, action, ordered, timeout: timeout))
        return root.find("\(action)Response") ?? root
    }

    private func soapRequest(_ svc: ServiceInfo, _ action: String, _ args: [(String, String)], timeout: TimeInterval) -> URLRequest {
        let inner = args.map { "<\($0.0)>\($0.1.xmlEscaped)</\($0.0)>" }.joined()
        let body = "<u:\(action) xmlns:u=\"\(svc.serviceType)\">\(inner)</u:\(action)>"
        return envelopeRequest(svc.controlURL, soapAction: "\(svc.serviceType)#\(action)", body: body, timeout: timeout)
    }

    private func envelopeRequest(_ url: URL, soapAction: String, body: String, timeout: TimeInterval) -> URLRequest {
        let envelope = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body>\(body)</s:Body></s:Envelope>"
        var req = URLRequest(url: url, timeoutInterval: timeout)
        req.httpMethod = "POST"
        req.httpBody = envelope.data(using: .utf8)
        req.setValue("text/xml; charset=\"utf-8\"", forHTTPHeaderField: "Content-Type")
        req.setValue("\"\(soapAction)\"", forHTTPHeaderField: "SOAPACTION")
        req.setValue("close", forHTTPHeaderField: "Connection")
        return req
    }

    private func post(_ url: URL, soapAction: String, body: String, timeout: TimeInterval) async throws -> XMLNode {
        try await send(envelopeRequest(url, soapAction: soapAction, body: body, timeout: timeout))
    }

    private func send(_ req: URLRequest) async throws -> XMLNode {
        let (data, resp) = try await URLSession.shared.data(for: req)
        if ProcessInfo.processInfo.environment["AIRSYNC_DEBUG"] != nil {
            NSLog("SOAP %@ -> %d %@", req.value(forHTTPHeaderField: "SOAPACTION") ?? "", (resp as? HTTPURLResponse)?.statusCode ?? 0,
                  String(decoding: data, as: UTF8.self))
        }
        guard let http = resp as? HTTPURLResponse, http.statusCode == 200 else {
            let code = (resp as? HTTPURLResponse)?.statusCode ?? 0
            let fault = XMLNode.parse(data)?.find("errorDescription")?.trimmedText ?? ""
            throw SessionError.message("HTTP \(code) \(fault)")
        }
        guard let root = XMLNode.parse(data) else { throw SessionError.message("bad response") }
        return root
    }

    /// Orders input arguments as the STB's SCPD lists them (CyberLink emits them in that order).
    private func orderedArgs(_ svc: ServiceInfo, action: String, args: [(String, String)]) async -> [(String, String)] {
        if scpdCache[svc.serviceType] == nil, let url = svc.scpdURL {
            var actions: [String: [String]] = [:]
            if let (data, _) = try? await URLSession.shared.data(for: URLRequest(url: url, timeoutInterval: 3)),
               let root = XMLNode.parse(data) {
                for a in root.findAll("action") {
                    guard let name = a.child("name")?.trimmedText else { continue }
                    actions[name] = a.findAll("argument")
                        .filter { $0.child("direction")?.trimmedText.lowercased() == "in" }
                        .compactMap { $0.child("name")?.trimmedText }
                }
            }
            scpdCache[svc.serviceType] = actions
        }
        guard let order = scpdCache[svc.serviceType]?[action], !order.isEmpty else { return args }
        let byName = Dictionary(args, uniquingKeysWith: { a, _ in a })
        return order.compactMap { n in byName[n].map { (n, $0) } } + args.filter { !order.contains($0.0) }
    }

    private func sysctlString(_ name: String) -> String? {
        var size = 0
        guard sysctlbyname(name, nil, &size, nil, 0) == 0, size > 0 else { return nil }
        var buf = [CChar](repeating: 0, count: size)
        guard sysctlbyname(name, &buf, &size, nil, 0) == 0 else { return nil }
        return String(cString: buf)
    }
}

enum SessionError: LocalizedError {
    case message(String)
    var errorDescription: String? {
        if case .message(let m) = self { return m }
        return nil
    }
}

/// Minimal HTTP server for UPnP NOTIFY callbacks (answers 200 to everything).
final class EventServer {
    private var fd: Int32 = -1
    private var thread: Thread?

    func start(onNotify: @escaping (String) -> Void) -> UInt16? {
        stop()
        for port in UInt16(8060) ... 8070 {
            let s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)
            var one: Int32 = 1
            setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &one, socklen_t(MemoryLayout<Int32>.size))
            var addr = sockaddr_in()
            addr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
            addr.sin_family = sa_family_t(AF_INET)
            addr.sin_port = port.bigEndian
            addr.sin_addr = in_addr(s_addr: INADDR_ANY)
            let ok = withUnsafePointer(to: &addr) {
                $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { bind(s, $0, socklen_t(MemoryLayout<sockaddr_in>.size)) }
            } == 0 && listen(s, 8) == 0
            if !ok { close(s); continue }
            fd = s
            let t = Thread { Self.serve(s, onNotify) }
            t.name = "UPnP events"
            thread = t
            t.start()
            return port
        }
        return nil
    }

    func stop() {
        if fd >= 0 {
            shutdown(fd, SHUT_RDWR)
            close(fd)
            fd = -1
        }
    }

    private static func serve(_ s: Int32, _ onNotify: @escaping (String) -> Void) {
        while true {
            let c = accept(s, nil, nil)
            if c < 0 { return }
            var tv = timeval(tv_sec: 2, tv_usec: 0)
            setsockopt(c, SOL_SOCKET, SO_RCVTIMEO, &tv, socklen_t(MemoryLayout<timeval>.size))
            var data = Data()
            var buf = [UInt8](repeating: 0, count: 8192)
            var expected: Int?
            while true {
                let n = recv(c, &buf, buf.count, 0)
                if n <= 0 { break }
                data.append(contentsOf: buf[0 ..< n])
                if let r = data.range(of: Data("\r\n\r\n".utf8)) {
                    if expected == nil {
                        let head = String(decoding: data[..<r.lowerBound], as: UTF8.self)
                        let len = head.components(separatedBy: "\r\n")
                            .first { $0.lowercased().hasPrefix("content-length:") }
                            .flatMap { Int($0.split(separator: ":")[1].trimmingCharacters(in: .whitespaces)) } ?? 0
                        expected = r.upperBound + len
                    }
                    if let e = expected, data.count >= e { break }
                }
            }
            let reply = "HTTP/1.1 200 OK\r\nContent-Length: 0\r\nConnection: close\r\n\r\n"
            _ = reply.withCString { send(c, $0, strlen($0), 0) }
            close(c)
            if let r = data.range(of: Data("\r\n\r\n".utf8)) {
                onNotify(String(decoding: data[r.upperBound...], as: UTF8.self))
            }
        }
    }
}
