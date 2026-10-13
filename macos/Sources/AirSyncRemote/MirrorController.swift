import AVFoundation
import AppKit
import CoreMedia

/// Receives the STB's mirror stream and renders it into a MirrorVideoView, with audio.
///
/// Lip sync: the audio is the master clock. The display layer's timebase is kept at the STB timestamp that is
/// being heard right now, and each video frame (stamped with the STB's timestamp) is shown when its time comes,
/// so the picture waits for the sound's queue and output latency instead of running ahead of it.
final class MirrorController {
    let view = MirrorVideoView(frame: NSRect(x: 0, y: 0, width: 1280, height: 720))
    private var video: UDPFrameReceiver?
    private var audio: UDPFrameReceiver?
    private let builder = H264SampleBuilder()
    private let aac = AACDecoder()
    private let output = AudioOutput()
    private let lock = NSLock()
    private var size: CMVideoDimensions?
    private var timebase: CMTimebase?
    private var syncTimer: DispatchSourceTimer?
    private var latestVideoPts: Double?
    private var lastAudioHost = 0.0
    private var smoothedOffset: Double? // (clock target - host time) in ms, smoothed against timestamp jitter
    private var nextAudioPts: Double? // audio receiver thread only

    /// Called on the main queue when the first picture arrives after start.
    var onFirstFrame: (() -> Void)?
    private var gotFrame = false

    var muted: Bool {
        get { output.muted }
        set { output.muted = newValue }
    }

    var volume: Float {
        get { output.volume }
        set { output.volume = newValue }
    }

    var videoSize: CMVideoDimensions? {
        lock.lock()
        defer { lock.unlock() }
        return size
    }

    init() {
        view.videoSizeProvider = { [weak self] in self?.videoSize }
        builder.displayImmediately = false
        var tb: CMTimebase?
        if CMTimebaseCreateWithSourceClock(allocator: kCFAllocatorDefault, sourceClock: CMClockGetHostTimeClock(),
                                           timebaseOut: &tb) == noErr, let tb {
            CMTimebaseSetRate(tb, rate: 1)
            view.displayLayer.controlTimebase = tb
            timebase = tb
        } else {
            builder.displayImmediately = true
        }
    }

    /// Keeps the picture's clock at the audio being heard; without sound it follows the arriving video instead.
    private func syncClock() {
        guard let tb = timebase else { return }
        let host = AudioOutput.now()
        let target: Double
        if let heard = output.heardPts() {
            lastAudioHost = host
            target = heard
        } else if host - lastAudioHost < 0.5 {
            return // a short gap in the sound: let the clock run on
        } else {
            lock.lock(); let v = latestVideoPts; lock.unlock()
            guard let v else { return }
            target = v - 40 // no sound: show frames almost as soon as they arrive
        }
        let offset = target - host * 1000
        if let s = smoothedOffset, abs(offset - s) < 150 {
            smoothedOffset = s + 0.1 * (offset - s)
        } else {
            smoothedOffset = offset
        }
        let wanted = host * 1000 + smoothedOffset!
        let current = CMTimebaseGetTime(tb).seconds * 1000
        if !current.isFinite || abs(current - wanted) > 15 {
            CMTimebaseSetTime(tb, time: CMTime(value: CMTimeValue(wanted.rounded()), timescale: 1000))
        }
    }

    func start() throws {
        stop()
        lock.lock(); latestVideoPts = nil; lock.unlock()
        nextAudioPts = nil
        gotFrame = false
        let v = UDPFrameReceiver(port: 8888)
        let a = UDPFrameReceiver(port: 8890)
        let layer = view.displayLayer
        v.onLoss = { [builder] in builder.resync() }
        v.onFrame = { [weak self] frame in
            guard let self else { return }
            var changed = false
            guard let sample = self.builder.sampleBuffer(for: frame, formatChanged: &changed) else { return }
            if changed {
                self.lock.lock()
                self.size = self.builder.dimensions
                self.lock.unlock()
                layer.flush()
            }
            if layer.status == .failed {
                layer.flush()
                self.builder.resync()
                return
            }
            self.lock.lock()
            self.latestVideoPts = Double(frame.timestampMs)
            self.lock.unlock()
            layer.enqueue(sample)
            if !self.gotFrame {
                self.gotFrame = true
                DispatchQueue.main.async { self.onFirstFrame?() }
            }
        }
        a.onFrame = { [weak self] frame in
            guard let self else { return }
            // The first audio frame of a session carries 0xFFFFFFFF instead of a timestamp: continue from the
            // previous frame then (or skip it when there is none) so the clock never jumps.
            guard var pts = frame.timestampMs != UInt32.max ? Double(frame.timestampMs) : self.nextAudioPts else { return }
            for adts in ADTSFrame.parse(frame.data) {
                if let pcm = self.aac.decode(adts) {
                    self.output.play(pcm, ptsMs: pts)
                    pts += Double(pcm.frameLength) * 1000 / pcm.format.sampleRate
                }
            }
            self.nextAudioPts = pts
        }
        try v.start()
        do {
            try a.start()
        } catch {
            v.stop()
            throw error
        }
        video = v
        audio = a
        smoothedOffset = nil
        lastAudioHost = 0
        let timer = DispatchSource.makeTimerSource(queue: DispatchQueue(label: "mirror.clock", qos: .userInteractive))
        timer.schedule(deadline: .now(), repeating: .milliseconds(20))
        timer.setEventHandler { [weak self] in self?.syncClock() }
        timer.resume()
        syncTimer = timer
    }

    /// Diagnostics for --synctest.
    func clockReport() -> String {
        let heard = output.heardPts()
        let clock = timebase.map { CMTimebaseGetTime($0).seconds * 1000 }
        lock.lock(); let v = latestVideoPts; lock.unlock()
        func f(_ x: Double?) -> String { x.map { String(format: "%.0f", $0) } ?? "-" }
        let ahead = (v != nil && clock != nil) ? f(v! - clock!) : "-"
        let diff = (heard != nil && clock != nil) ? f(clock! - heard!) : "-"
        return "heard=\(f(heard)) clock=\(f(clock)) clock-heard=\(diff)ms newestVideo-clock=\(ahead)ms layer=\(view.displayLayer.status.rawValue)"
    }

    func stop() {
        syncTimer?.cancel()
        syncTimer = nil
        video?.stop()
        audio?.stop()
        video = nil
        audio = nil
        output.stop()
        view.displayLayer.flushAndRemoveImage()
        builder.resync()
    }
}
