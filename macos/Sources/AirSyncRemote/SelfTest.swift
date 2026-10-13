import AVFoundation
import CoreImage
import Foundation
import VideoToolbox

/// Receives the mirror stream on UDP 8888/8890 and decodes it with VideoToolbox / AVAudioConverter, keeping
/// counters and the latest picture. Used by the command-line tests.
final class StreamProbe {
    private let video = UDPFrameReceiver(port: 8888)
    private let audio = UDPFrameReceiver(port: 8890)
    private let builder = H264SampleBuilder()
    private let aac = AACDecoder()
    private let lock = NSLock()
    private var session: VTDecompressionSession?
    private var framesIn = 0, framesDecoded = 0, decodeErrors = 0, losses = 0
    private var lastImage: CVImageBuffer?
    private var audioFrames = 0, audioSamples = 0
    private var sumSquares = 0.0

    func start() throws {
        video.onLoss = { [unowned self] in lock.lock(); losses += 1; lock.unlock(); builder.resync() }
        video.onFrame = { [unowned self] frame in
            var changed = false
            guard let sample = builder.sampleBuffer(for: frame, formatChanged: &changed) else { return }
            lock.lock(); framesIn += 1; lock.unlock()
            if changed || session == nil, let fd = builder.formatDescription {
                if let s = session { VTDecompressionSessionInvalidate(s) }
                session = nil
                VTDecompressionSessionCreate(allocator: nil, formatDescription: fd, decoderSpecification: nil,
                                             imageBufferAttributes: nil, outputCallback: nil, decompressionSessionOut: &session)
            }
            guard let s = session else { return }
            let st = VTDecompressionSessionDecodeFrame(s, sampleBuffer: sample, flags: [], infoFlagsOut: nil) { [unowned self] status, _, image, _, _ in
                lock.lock()
                if status == noErr, let image { framesDecoded += 1; lastImage = image } else { decodeErrors += 1 }
                lock.unlock()
            }
            if st != noErr { lock.lock(); decodeErrors += 1; lock.unlock() }
        }
        audio.onFrame = { [unowned self] frame in
            for adts in ADTSFrame.parse(frame.data) {
                guard let pcm = aac.decode(adts), let ch = pcm.floatChannelData else { continue }
                lock.lock()
                audioFrames += 1
                for c in 0 ..< Int(pcm.format.channelCount) {
                    for i in 0 ..< Int(pcm.frameLength) { sumSquares += Double(ch[c][i] * ch[c][i]) }
                }
                audioSamples += Int(pcm.frameLength) * Int(pcm.format.channelCount)
                lock.unlock()
            }
        }
        try video.start()
        try audio.start()
    }

    func stop() {
        video.stop()
        audio.stop()
        if let s = session { VTDecompressionSessionWaitForAsynchronousFrames(s) }
    }

    var hasPictureAndSound: Bool {
        lock.lock(); defer { lock.unlock() }
        return framesDecoded > 0 && audioFrames > 0
    }

    func report() {
        lock.lock(); defer { lock.unlock() }
        let dims = builder.dimensions.map { "\($0.width)x\($0.height)" } ?? "none"
        let rms = audioSamples > 0 ? sqrt(sumSquares / Double(audioSamples)) : 0
        print("video: format \(dims), frames submitted \(framesIn), decoded \(framesDecoded), errors \(decodeErrors), loss events \(losses)")
        print("audio: frames decoded \(audioFrames), rms \(String(format: "%.4f", rms))")
    }

    /// Loudness (RMS) of the sound received since the last call, then starts a new measurement.
    func takeRMS() -> Double {
        lock.lock(); defer { lock.unlock() }
        let rms = audioSamples > 0 ? sqrt(sumSquares / Double(audioSamples)) : 0
        sumSquares = 0
        audioSamples = 0
        return rms
    }

    /// Writes the latest decoded picture as PNG; returns false if there is none yet.
    @discardableResult
    func savePicture(_ path: String) -> Bool {
        lock.lock(); let img = lastImage; lock.unlock()
        guard let img else { return false }
        let ci = CIImage(cvImageBuffer: img)
        guard let cg = CIContext().createCGImage(ci, from: ci.extent),
              let dest = CGImageDestinationCreateWithURL(URL(fileURLWithPath: path) as CFURL, "public.png" as CFString, 1, nil)
        else { return false }
        CGImageDestinationAddImage(dest, cg, nil)
        return CGImageDestinationFinalize(dest)
    }
}

/// `AirSyncRemote --selftest <seconds> <out.png>`: receives the mirror stream on UDP 8888/8890 (e.g. a pcap
/// replay), decodes it and reports what it got.
enum SelfTest {
    static func run(seconds: Double, pngPath: String) -> Int32 {
        let probe = StreamProbe()
        do {
            try probe.start()
        } catch {
            print("bind failed: \(error)")
            return 1
        }
        print("listening on UDP 8888/8890 for \(seconds)s")
        Thread.sleep(forTimeInterval: seconds)
        probe.stop()
        probe.report()
        if probe.savePicture(pngPath) { print("wrote \(pngPath)") }
        return probe.hasPictureAndSound ? 0 : 2
    }
}
