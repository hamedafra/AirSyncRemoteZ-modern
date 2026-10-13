import Foundation

/// `AirSyncRemote --livetest <seconds> <out.png>`: discovers the receiver, connects, mirrors for a while while
/// decoding the stream (like --selftest), then stops mirroring and disconnects. Presses no remote keys.
enum LiveTest {
    @MainActor
    static func run(seconds: Double, pngPath: String) async -> Int32 {
        let devices = await Discovery.search(timeout: 4)
        guard let device = devices.first else {
            print("live: no receiver found")
            return 1
        }
        print("live: found \(device.name) at \(device.ip)")
        let session = STBSession()
        await session.connect(to: device)
        guard session.state == .connected else {
            print("live: connect failed: \(session.state)")
            return 1
        }
        print("live: connected as \(session.remoteID) from \(session.localIP) — \(session.status)")

        let decode = Task.detached { SelfTest.run(seconds: seconds, pngPath: pngPath) }
        try? await Task.sleep(nanoseconds: 500_000_000)
        let started = await session.startMirror()
        print("live: StartMirror \(started ? "accepted" : "failed: \(session.status)")")
        let result = await decode.value
        print("live: still connected after mirroring: \(session.state == .connected) (\(session.status))")
        await session.stopMirror()
        await session.disconnect()
        print("live: stopped mirror and disconnected")
        return started ? result : 1
    }
}
