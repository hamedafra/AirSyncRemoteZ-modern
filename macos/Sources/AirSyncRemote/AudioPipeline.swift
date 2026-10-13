import AVFoundation

/// Decodes the STB's AAC (ADTS) audio to PCM.
final class AACDecoder {
    private var converter: AVAudioConverter?
    private var inputFormat: AVAudioFormat?
    private(set) var outputFormat: AVAudioFormat?
    private var configKey = -1

    /// Decodes one ADTS frame; returns nil while (re)configuring fails.
    func decode(_ frame: ADTSFrame) -> AVAudioPCMBuffer? {
        let key = frame.profile << 16 | frame.sampleRateIndex << 8 | frame.channels
        if key != configKey {
            configure(frame)
            configKey = key
        }
        guard let converter, let inputFormat, let outputFormat else { return nil }

        let input = AVAudioCompressedBuffer(format: inputFormat, packetCapacity: 1, maximumPacketSize: max(frame.payload.count, 1))
        frame.payload.withUnsafeBytes { input.data.copyMemory(from: $0.baseAddress!, byteCount: frame.payload.count) }
        input.byteLength = UInt32(frame.payload.count)
        input.packetCount = 1
        input.packetDescriptions?.pointee = AudioStreamPacketDescription(mStartOffset: 0, mVariableFramesInPacket: 0,
                                                                         mDataByteSize: UInt32(frame.payload.count))
        guard let out = AVAudioPCMBuffer(pcmFormat: outputFormat, frameCapacity: 2048) else { return nil }
        var supplied = false
        var error: NSError?
        let status = converter.convert(to: out, error: &error) { _, inputStatus in
            if supplied {
                inputStatus.pointee = .noDataNow
                return nil
            }
            supplied = true
            inputStatus.pointee = .haveData
            return input
        }
        if status == .error {
            NSLog("AAC decode error: \(error?.localizedDescription ?? "?")")
            configKey = -1
            return nil
        }
        return out.frameLength > 0 ? out : nil
    }

    private func configure(_ frame: ADTSFrame) {
        var asbd = AudioStreamBasicDescription(mSampleRate: Double(frame.sampleRate), mFormatID: kAudioFormatMPEG4AAC,
                                               mFormatFlags: UInt32(frame.profile == 2 ? 0 : frame.profile),
                                               mBytesPerPacket: 0, mFramesPerPacket: 1024, mBytesPerFrame: 0,
                                               mChannelsPerFrame: UInt32(frame.channels), mBitsPerChannel: 0, mReserved: 0)
        guard let inFmt = AVAudioFormat(streamDescription: &asbd),
              let outFmt = AVAudioFormat(commonFormat: .pcmFormatFloat32, sampleRate: Double(frame.sampleRate),
                                         channels: AVAudioChannelCount(frame.channels), interleaved: false),
              let conv = AVAudioConverter(from: inFmt, to: outFmt) else {
            NSLog("cannot create AAC converter for \(frame.sampleRate) Hz x\(frame.channels)")
            converter = nil
            return
        }
        // AudioSpecificConfig, so the decoder knows the exact stream configuration.
        let asc: [UInt8] = [UInt8(frame.profile << 3 | frame.sampleRateIndex >> 1),
                            UInt8((frame.sampleRateIndex & 1) << 7 | frame.channels << 3)]
        conv.magicCookie = Data(asc)
        inputFormat = inFmt
        outputFormat = outFmt
        converter = conv
    }
}

/// Plays decoded PCM with a small, bounded latency, and reports which STB timestamp is being heard right now
/// (the master clock for lip sync: the picture is shown in step with it).
final class AudioOutput {
    private let engine = AVAudioEngine()
    private let player = AVAudioPlayerNode()
    private var format: AVAudioFormat?
    private let lock = NSLock()
    private let maxQueued = 8 // ~170 ms of 1024-sample AAC frames at 48 kHz

    /// Buffers scheduled but not yet heard, oldest first (STB timestamp and length in ms).
    private var pending: [(pts: Double, ms: Double)] = []
    /// Host time (seconds) at which the oldest pending buffer starts being heard.
    private var headStart = 0.0
    /// Bumped on restart/stop so completions of discarded buffers are ignored.
    private var generation = 0

    var muted = false {
        didSet { applyVolume() }
    }

    /// Playback volume on this Mac, 0...1.
    var volume: Float = 1 {
        didSet { applyVolume() }
    }

    private func applyVolume() {
        player.volume = muted ? 0 : volume
    }

    /// Plays a decoded buffer whose first sample has the STB timestamp `ptsMs`.
    func play(_ buffer: AVAudioPCMBuffer, ptsMs: Double) {
        if format != buffer.format {
            restart(with: buffer.format)
        }
        let ms = Double(buffer.frameLength) * 1000 / buffer.format.sampleRate
        lock.lock()
        if pending.count >= maxQueued {
            lock.unlock()
            return // drop rather than let latency grow
        }
        if pending.isEmpty {
            // Nothing queued: this buffer is rendered right away and heard after the output latency.
            headStart = Self.now() + outputLatency()
        }
        pending.append((ptsMs, ms))
        let gen = generation
        lock.unlock()
        player.scheduleBuffer(buffer, completionCallbackType: .dataPlayedBack) { [weak self] _ in
            guard let self else { return }
            self.lock.lock()
            if gen == self.generation, !self.pending.isEmpty {
                self.pending.removeFirst()
                self.headStart = Self.now() // the next buffer is being heard from now on
            }
            self.lock.unlock()
        }
        if !player.isPlaying && engine.isRunning {
            player.play()
        }
    }

    /// The STB timestamp (ms) being heard right now, or nil when no sound is playing.
    func heardPts() -> Double? {
        lock.lock()
        defer { lock.unlock() }
        guard let head = pending.first else { return nil }
        let elapsed = (Self.now() - headStart) * 1000
        return head.pts + min(max(elapsed, -head.ms), head.ms)
    }

    private func outputLatency() -> Double {
        engine.outputNode.presentationLatency + 0.01 // device latency + about one I/O buffer
    }

    static func now() -> Double {
        Double(DispatchTime.now().uptimeNanoseconds) / 1e9
    }

    private func restart(with fmt: AVAudioFormat) {
        if engine.isRunning { engine.stop() }
        if engine.attachedNodes.contains(player) == false {
            engine.attach(player)
        }
        engine.disconnectNodeOutput(player)
        engine.connect(player, to: engine.mainMixerNode, format: fmt)
        format = fmt
        resetQueue()
        do {
            try engine.start()
            player.play()
        } catch {
            NSLog("audio engine start failed: \(error)")
        }
    }

    private func resetQueue() {
        lock.lock()
        generation += 1
        pending.removeAll()
        lock.unlock()
    }

    func stop() {
        resetQueue()
        player.stop()
        engine.stop()
        format = nil
    }
}
