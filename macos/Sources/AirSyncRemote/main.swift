import Foundation

let args = CommandLine.arguments
if let i = args.firstIndex(of: "--selftest") {
    let seconds = args.count > i + 1 ? Double(args[i + 1]) ?? 10 : 10
    let png = args.count > i + 2 ? args[i + 2] : "/tmp/airsync-selftest.png"
    exit(SelfTest.run(seconds: seconds, pngPath: png))
}
if let i = args.firstIndex(of: "--livetest") {
    let seconds = args.count > i + 1 ? Double(args[i + 1]) ?? 15 : 15
    let png = args.count > i + 2 ? args[i + 2] : "/tmp/airsync-live.png"
    Task { @MainActor in
        let code = await LiveTest.run(seconds: seconds, pngPath: png)
        exit(code)
    }
    RunLoop.main.run()
}
if let i = args.firstIndex(of: "--rawcapture") {
    let seconds = args.count > i + 1 ? Double(args[i + 1]) ?? 12 : 12
    let resend = args.count > i + 2 ? args[i + 2] : "0"
    let path = args.count > i + 3 ? args[i + 3] : "/tmp/airsync-raw.bin"
    Task { @MainActor in
        exit(await RawCapture.run(seconds: seconds, resend: resend, path: path))
    }
    RunLoop.main.run()
}
if let i = args.firstIndex(of: "--synctest") {
    let seconds = args.count > i + 1 ? Double(args[i + 1]) ?? 15 : 15
    exit(SyncTest.run(seconds: seconds))
}
if let i = args.firstIndex(of: "--keytest") {
    let dir = args.count > i + 1 ? args[i + 1] : "/tmp/airsync-keytest"
    Task { @MainActor in
        exit(await KeyTest.run(outDir: dir))
    }
    RunLoop.main.run()
}
if args.contains("--discover") {
    let sem = DispatchSemaphore(value: 0)
    Task.detached {
        let devices = await Discovery.search(timeout: 4)
        if devices.isEmpty { print("no receivers found") }
        for d in devices {
            print("\(d.name)  ip=\(d.ip)  id=\(d.id)")
            for (k, v) in d.services.sorted(by: { $0.key < $1.key }) { print("   \(k): \(v.controlURL.absoluteString)") }
        }
        sem.signal()
    }
    sem.wait()
    exit(0)
}
AirSyncApp.main()
