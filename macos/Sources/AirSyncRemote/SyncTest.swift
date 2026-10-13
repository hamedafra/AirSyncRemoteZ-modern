import CoreMedia
import Foundation

/// `AirSyncRemote --synctest <seconds>`: plays the mirror stream arriving on UDP 8888/8890 (e.g. a capture
/// replay) through the real pipeline, muted, and prints the lip-sync clock twice a second: the STB time being
/// heard, the picture clock, and how far the newest video frame is ahead of the picture clock.
enum SyncTest {
    static func run(seconds: Double) -> Int32 {
        let mirror = MirrorController()
        mirror.muted = true
        do { try mirror.start() } catch {
            print("synctest: cannot listen: \(error)")
            return 1
        }
        let end = Date().addingTimeInterval(seconds)
        while Date() < end {
            Thread.sleep(forTimeInterval: 0.5)
            print("synctest: " + mirror.clockReport())
        }
        mirror.stop()
        return 0
    }
}
