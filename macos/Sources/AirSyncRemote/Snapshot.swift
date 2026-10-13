import AppKit
import AVFoundation
import CoreImage

/// Test hook: with AIRSYNC_SNAPSHOT=<png> the app writes an image of its window (including the picture
/// currently shown by the video layer) after AIRSYNC_SNAPSHOT_DELAY seconds, then quits.
enum Snapshot {
    static func scheduleIfRequested(mirrorView: MirrorVideoView) {
        let env = ProcessInfo.processInfo.environment
        guard let path = env["AIRSYNC_SNAPSHOT"] else { return }
        let delay = Double(env["AIRSYNC_SNAPSHOT_DELAY"] ?? "") ?? 8
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            write(path: path, mirrorView: mirrorView)
            NSApp.terminate(nil)
        }
    }

    private static func write(path: String, mirrorView: MirrorVideoView) {
        guard let content = mirrorView.window?.contentView,
              let rep = content.bitmapImageRepForCachingDisplay(in: content.bounds) else {
            print("snapshot: no window")
            return
        }
        content.cacheDisplay(in: content.bounds, to: rep)
        let layer = mirrorView.displayLayer
        var shown = "none"
        if #available(macOS 14.4, *), let pb = layer.sampleBufferRenderer.displayedPixelBuffer() {
            shown = "\(CVPixelBufferGetWidth(pb))x\(CVPixelBufferGetHeight(pb))"
            let ci = CIImage(cvPixelBuffer: pb)
            if let cg = CIContext().createCGImage(ci, from: ci.extent), let ctx = NSGraphicsContext(bitmapImageRep: rep) {
                NSGraphicsContext.saveGraphicsState()
                NSGraphicsContext.current = ctx
                // Video rect in bitmap (bottom-left origin) coordinates.
                var r = mirrorView.convert(mirrorView.videoRect(), to: content)
                if content.isFlipped { r.origin.y = content.bounds.height - r.maxY }
                ctx.cgContext.draw(cg, in: r)
                NSGraphicsContext.restoreGraphicsState()
            }
        }
        print("snapshot: layer status \(layer.status.rawValue), displayed frame \(shown)")
        if let png = rep.representation(using: .png, properties: [:]) {
            try? png.write(to: URL(fileURLWithPath: path))
            print("snapshot: wrote \(path)")
        }
    }
}
