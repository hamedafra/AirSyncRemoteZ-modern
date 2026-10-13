import Darwin
import Foundation

struct ServiceInfo: Hashable {
    let serviceType: String
    let controlURL: URL
    let eventSubURL: URL?
    let scpdURL: URL?
}

struct STBDevice: Identifiable, Hashable {
    let id: String          // UDN
    let name: String
    let ip: String
    let services: [String: ServiceInfo] // keyed by short name, e.g. "AccessControlServer"

    func service(_ name: String) -> ServiceInfo? { services[name] }

    /// Device reached by IP without discovery: uses the STB's well-known UPnP paths.
    static func manual(ip: String, port: Int = 49152) -> STBDevice {
        var services: [String: ServiceInfo] = [:]
        for name in ["AccessControlServer", "MirrorControlServer", "VinputControlServer", "GsensorControlServer", "VIMEControlServer"] {
            let base = "http://\(ip):\(port)/upnp/service/\(name)"
            services[name] = ServiceInfo(serviceType: "urn:schemas-upnp-org:service:\(name):1",
                                         controlURL: URL(string: base + "/Control")!,
                                         eventSubURL: URL(string: base + "/Event"),
                                         scpdURL: nil)
        }
        return STBDevice(id: "manual-\(ip)", name: ip, ip: ip, services: services)
    }
}

/// SSDP discovery of HiSilicon MultiScreen servers (what the Android app does with CyberLink UPnP).
enum Discovery {
    static let deviceType = "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    static func search(timeout: TimeInterval = 3) async -> [STBDevice] {
        let locations = await Task.detached { ssdpSearch(timeout: timeout) }.value
        var devices: [STBDevice] = []
        await withTaskGroup(of: STBDevice?.self) { group in
            for loc in locations {
                group.addTask { await fetchDescription(loc) }
            }
            for await d in group {
                if let d, !devices.contains(where: { $0.id == d.id }) { devices.append(d) }
            }
        }
        return devices.sorted { $0.name < $1.name }
    }

    /// Sends M-SEARCH to the multicast group and the subnet broadcast, returns LOCATION URLs.
    private static func ssdpSearch(timeout: TimeInterval) -> Set<URL> {
        let s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
        guard s >= 0 else { return [] }
        defer { close(s) }
        var one: Int32 = 1
        setsockopt(s, SOL_SOCKET, SO_BROADCAST, &one, socklen_t(MemoryLayout<Int32>.size))
        var tv = timeval(tv_sec: 0, tv_usec: 250_000)
        setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, &tv, socklen_t(MemoryLayout<timeval>.size))
        let msg = "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nMAN: \"ssdp:discover\"\r\nMX: 3\r\nST: \(deviceType)\r\n\r\n"
        let targets = ["239.255.255.250", "255.255.255.255"] + NetworkInfo.broadcastAddresses()
        func sendAll() {
            for t in targets {
                var addr = sockaddr_in()
                addr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
                addr.sin_family = sa_family_t(AF_INET)
                addr.sin_port = UInt16(1900).bigEndian
                inet_pton(AF_INET, t, &addr.sin_addr)
                _ = msg.withCString { p in
                    withUnsafePointer(to: &addr) {
                        $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { sendto(s, p, strlen(p), 0, $0, socklen_t(MemoryLayout<sockaddr_in>.size)) }
                    }
                }
            }
        }
        var found = Set<URL>()
        var buf = [UInt8](repeating: 0, count: 4096)
        let deadline = Date().addingTimeInterval(timeout)
        var nextSend = Date()
        while Date() < deadline {
            if Date() >= nextSend {
                sendAll()
                nextSend = Date().addingTimeInterval(1)
            }
            let n = recv(s, &buf, buf.count, 0)
            guard n > 0, let text = String(bytes: buf[0 ..< n], encoding: .utf8) else { continue }
            var headers: [String: String] = [:]
            for line in text.components(separatedBy: "\r\n") {
                if let c = line.firstIndex(of: ":") {
                    headers[line[..<c].trimmingCharacters(in: .whitespaces).uppercased()] =
                        line[line.index(after: c)...].trimmingCharacters(in: .whitespaces)
                }
            }
            let st = headers["ST"] ?? headers["NT"] ?? ""
            let usn = headers["USN"] ?? ""
            guard st.hasPrefix(deviceType) || usn.hasSuffix(deviceType),
                  let loc = headers["LOCATION"], let url = URL(string: loc) else { continue }
            found.insert(url)
        }
        return found
    }

    static func fetchDescription(_ location: URL) async -> STBDevice? {
        var req = URLRequest(url: location, timeoutInterval: 4)
        req.setValue("close", forHTTPHeaderField: "Connection")
        guard let (data, _) = try? await URLSession.shared.data(for: req),
              let root = XMLNode.parse(data),
              let device = root.findAll("device").first(where: { $0.child("deviceType")?.trimmedText == deviceType }),
              let host = location.host else { return nil }
        let base = root.find("URLBase").flatMap { URL(string: $0.trimmedText) } ?? location
        var services: [String: ServiceInfo] = [:]
        for s in device.findAll("service") {
            guard let type = s.child("serviceType")?.trimmedText,
                  let ctl = s.child("controlURL")?.trimmedText,
                  let ctlURL = URL(string: ctl, relativeTo: base)?.absoluteURL else { continue }
            let short = type.components(separatedBy: ":").dropLast().last ?? type
            services[short] = ServiceInfo(
                serviceType: type, controlURL: ctlURL,
                eventSubURL: s.child("eventSubURL").flatMap { URL(string: $0.trimmedText, relativeTo: base)?.absoluteURL },
                scpdURL: s.child("SCPDURL").flatMap { URL(string: $0.trimmedText, relativeTo: base)?.absoluteURL })
        }
        guard services["AccessControlServer"] != nil else { return nil }
        let name = device.child("friendlyName")?.trimmedText ?? host
        let udn = device.child("UDN")?.trimmedText ?? host
        return STBDevice(id: udn, name: name, ip: host, services: services)
    }
}

enum NetworkInfo {
    /// Subnet broadcast addresses of active IPv4 interfaces.
    static func broadcastAddresses() -> [String] {
        var out: [String] = []
        var ifap: UnsafeMutablePointer<ifaddrs>?
        guard getifaddrs(&ifap) == 0, let first = ifap else { return out }
        defer { freeifaddrs(ifap) }
        var p: UnsafeMutablePointer<ifaddrs>? = first
        while let ifa = p {
            defer { p = ifa.pointee.ifa_next }
            let flags = Int32(ifa.pointee.ifa_flags)
            guard flags & IFF_UP != 0, flags & IFF_LOOPBACK == 0, flags & IFF_BROADCAST != 0,
                  let a = ifa.pointee.ifa_dstaddr, a.pointee.sa_family == sa_family_t(AF_INET) else { continue }
            var host = [CChar](repeating: 0, count: Int(NI_MAXHOST))
            if getnameinfo(a, socklen_t(a.pointee.sa_len), &host, socklen_t(host.count), nil, 0, NI_NUMERICHOST) == 0 {
                out.append(String(cString: host))
            }
        }
        return out
    }

    /// The local IPv4 address the OS would use to reach `ip`.
    static func localAddress(toward ip: String) -> String? {
        let s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
        guard s >= 0 else { return nil }
        defer { close(s) }
        var addr = sockaddr_in()
        addr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        addr.sin_family = sa_family_t(AF_INET)
        addr.sin_port = UInt16(9).bigEndian
        guard inet_pton(AF_INET, ip, &addr.sin_addr) == 1 else { return nil }
        let rc = withUnsafePointer(to: &addr) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { connect(s, $0, socklen_t(MemoryLayout<sockaddr_in>.size)) }
        }
        guard rc == 0 else { return nil }
        var local = sockaddr_in()
        var len = socklen_t(MemoryLayout<sockaddr_in>.size)
        let r = withUnsafeMutablePointer(to: &local) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { getsockname(s, $0, &len) }
        }
        guard r == 0 else { return nil }
        var buf = [CChar](repeating: 0, count: Int(INET_ADDRSTRLEN))
        inet_ntop(AF_INET, &local.sin_addr, &buf, socklen_t(buf.count))
        return String(cString: buf)
    }
}
