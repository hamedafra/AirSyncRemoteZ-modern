import Darwin
import Foundation

/// `AirSyncRemote --rawcapture <seconds> <resend 0|1> <out.bin>`: connects, mirrors with the given resend
/// parameter and records every datagram on UDP 8888/8890 (record: u16 port, f64 time, u32 len, bytes).
enum RawCapture {
    @MainActor
    static func run(seconds: Double, resend: String, path: String) async -> Int32 {
        guard let device = await Discovery.search(timeout: 4).first else {
            print("raw: no receiver found")
            return 1
        }
        let session = STBSession()
        await session.connect(to: device)
        guard session.state == .connected else {
            print("raw: connect failed: \(session.state)")
            return 1
        }
        FileManager.default.createFile(atPath: path, contents: nil)
        guard let out = FileHandle(forWritingAtPath: path) else { return 1 }
        let lock = NSLock()
        var running = true
        var counts: [UInt16: Int] = [:]
        var threads: [Thread] = []
        var fds: [Int32] = []
        let start = Date().timeIntervalSince1970
        for port in [UInt16(8888), UInt16(8890)] {
            let s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
            var one: Int32 = 1
            setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &one, socklen_t(MemoryLayout<Int32>.size))
            var rcv: Int32 = 8 << 20
            setsockopt(s, SOL_SOCKET, SO_RCVBUF, &rcv, socklen_t(MemoryLayout<Int32>.size))
            var tv = timeval(tv_sec: 0, tv_usec: 200_000)
            setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, &tv, socklen_t(MemoryLayout<timeval>.size))
            var addr = sockaddr_in()
            addr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
            addr.sin_family = sa_family_t(AF_INET)
            addr.sin_port = port.bigEndian
            _ = withUnsafePointer(to: &addr) {
                $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { bind(s, $0, socklen_t(MemoryLayout<sockaddr_in>.size)) }
            }
            fds.append(s)
            let t = Thread {
                var buf = [UInt8](repeating: 0, count: 65536)
                while true {
                    lock.lock(); let r = running; lock.unlock()
                    if !r { break }
                    let n = recv(s, &buf, buf.count, 0)
                    if n <= 0 { continue }
                    var rec = Data()
                    var p = port.littleEndian
                    var t = Date().timeIntervalSince1970 - start
                    var l = UInt32(n).littleEndian
                    withUnsafeBytes(of: &p) { rec.append(contentsOf: $0) }
                    withUnsafeBytes(of: &t) { rec.append(contentsOf: $0) }
                    withUnsafeBytes(of: &l) { rec.append(contentsOf: $0) }
                    rec.append(contentsOf: buf[0 ..< n])
                    lock.lock()
                    out.write(rec)
                    counts[port, default: 0] += 1
                    lock.unlock()
                }
            }
            threads.append(t)
            t.start()
        }
        let param = "fps=15,resend=\(resend),cip=\(session.localIP),cport=8888,video_play=1,source=h264"
        let ok = await session.startMirror(parameter: param)
        print("raw: StartMirror with \(param): \(ok ? "accepted" : "failed: \(session.status)")")
        try? await Task.sleep(nanoseconds: UInt64(seconds * 1e9))
        await session.stopMirror()
        try? await Task.sleep(nanoseconds: 500_000_000)
        lock.lock(); running = false; lock.unlock()
        for s in fds { close(s) }
        await session.disconnect()
        lock.lock(); out.closeFile(); lock.unlock()
        print("raw: datagrams 8888=\(counts[8888] ?? 0) 8890=\(counts[8890] ?? 0) -> \(path)")
        return ok ? 0 : 1
    }
}
