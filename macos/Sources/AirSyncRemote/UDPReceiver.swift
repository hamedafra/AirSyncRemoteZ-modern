import Darwin
import Foundation

/// Receives datagrams on a UDP port on a background thread and hands reassembled frames to `onFrame`.
final class UDPFrameReceiver {
    let port: UInt16
    private let assembler = FrameAssembler()
    private var fd: Int32 = -1
    private var thread: Thread?
    private let lock = NSLock()
    private var running = false

    var onFrame: ((StreamFrame) -> Void)?
    var onLoss: (() -> Void)? {
        get { assembler.onLoss }
        set { assembler.onLoss = newValue }
    }

    init(port: UInt16) {
        self.port = port
    }

    func start() throws {
        let s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
        guard s >= 0 else { throw POSIXError(POSIXErrorCode(rawValue: errno) ?? .EIO) }
        var one: Int32 = 1
        setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &one, socklen_t(MemoryLayout<Int32>.size))
        setsockopt(s, SOL_SOCKET, SO_REUSEPORT, &one, socklen_t(MemoryLayout<Int32>.size))
        var rcvbuf: Int32 = 4 << 20
        setsockopt(s, SOL_SOCKET, SO_RCVBUF, &rcvbuf, socklen_t(MemoryLayout<Int32>.size))
        var tv = timeval(tv_sec: 0, tv_usec: 200_000)
        setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, &tv, socklen_t(MemoryLayout<timeval>.size))
        var addr = sockaddr_in()
        addr.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        addr.sin_family = sa_family_t(AF_INET)
        addr.sin_port = port.bigEndian
        addr.sin_addr = in_addr(s_addr: INADDR_ANY)
        let rc = withUnsafePointer(to: &addr) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) { bind(s, $0, socklen_t(MemoryLayout<sockaddr_in>.size)) }
        }
        guard rc == 0 else {
            let err = errno
            close(s)
            throw POSIXError(POSIXErrorCode(rawValue: err) ?? .EADDRINUSE)
        }
        fd = s
        running = true
        let t = Thread { [weak self] in self?.loop() }
        t.name = "UDP \(port)"
        t.qualityOfService = .userInteractive
        thread = t
        t.start()
    }

    func stop() {
        lock.lock()
        running = false
        lock.unlock()
        if fd >= 0 {
            shutdown(fd, SHUT_RDWR)
            close(fd)
            fd = -1
        }
    }

    private var isRunning: Bool {
        lock.lock()
        defer { lock.unlock() }
        return running
    }

    private func loop() {
        let buf = UnsafeMutableRawBufferPointer.allocate(byteCount: 65536, alignment: 8)
        defer { buf.deallocate() }
        let s = fd
        while isRunning {
            let n = recv(s, buf.baseAddress, buf.count, 0)
            if n < 0 {
                if errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR { continue }
                break
            }
            if let frame = assembler.push(UnsafeRawBufferPointer(rebasing: buf[0 ..< n])) {
                onFrame?(frame)
            }
        }
    }
}
