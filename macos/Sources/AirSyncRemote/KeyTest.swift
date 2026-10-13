import Foundation

/// `AirSyncRemote --keytest <out-dir>`: connects, mirrors, presses Info (a key known to work) and then volume
/// up / volume down / mute / mute, saving the mirrored picture after each so the TV's reaction can be checked.
/// Every key packet and its send result is printed (AIRSYNC_DEBUG is set for this).
enum KeyTest {
    @MainActor
    static func run(outDir: String) async -> Int32 {
        setenv("AIRSYNC_DEBUG", "1", 1)
        try? FileManager.default.createDirectory(atPath: outDir, withIntermediateDirectories: true)
        guard let device = await Discovery.search(timeout: 4).first else {
            print("keytest: no receiver found")
            return 1
        }
        let session = STBSession()
        await session.connect(to: device)
        guard session.state == .connected else {
            print("keytest: connect failed: \(session.state)")
            return 1
        }
        print("keytest: connected to \(device.name) at \(device.ip) as \(session.remoteID)")
        let probe = StreamProbe()
        do { try probe.start() } catch {
            print("keytest: cannot listen for the mirror: \(error)")
            await session.disconnect()
            return 1
        }
        let mirroring = await session.startMirror()
        print("keytest: StartMirror \(mirroring ? "accepted" : "failed")")
        try? await Task.sleep(nanoseconds: 4_000_000_000)
        probe.savePicture("\(outDir)/0-start.png")
        _ = probe.takeRMS()
        try? await Task.sleep(nanoseconds: 3_000_000_000)
        print("keytest: sound level before: \(String(format: "%.4f", probe.takeRMS()))")

        let steps: [(String, Key)] = ProcessInfo.processInfo.environment["KEYTEST_STEPS"] == "restore"
            ? [("1-mute", .mute), ("2-unmute", .mute), ("3-volup", .volumeUp)]
            : [("1-info", .info), ("2-volup", .volumeUp), ("3-voldown", .volumeDown), ("4-mute", .mute), ("5-unmute", .mute)]
        for (name, key) in steps {
            print("keytest: press \(name) (code \(key.rawValue))")
            session.press(key)
            try? await Task.sleep(nanoseconds: 1_200_000_000)
            probe.savePicture("\(outDir)/\(name).png")
            _ = probe.takeRMS()
            try? await Task.sleep(nanoseconds: 2_500_000_000)
            print("keytest: sound level after \(name): \(String(format: "%.4f", probe.takeRMS()))")
        }
        probe.report()
        await session.stopMirror()
        probe.stop()
        await session.disconnect()
        print("keytest: stopped mirror and disconnected")
        return 0
    }
}
