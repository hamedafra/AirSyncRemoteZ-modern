import AVFoundation
import AppKit
import CoreMedia

/// Turns the STB's H.264 frames into CMSampleBuffers (AVCC) for AVSampleBufferDisplayLayer / VideoToolbox.
final class H264SampleBuilder {
    private(set) var formatDescription: CMVideoFormatDescription?
    private var sps: Data?
    private var pps: Data?
    private var waitKeyFrame = true
    /// Show each frame as soon as it is decoded (no timing). The mirror window turns this off and times the
    /// frames with a timebase that follows the audio instead.
    var displayImmediately = true

    /// Video size from the current SPS, if known.
    var dimensions: CMVideoDimensions? {
        formatDescription.map { CMVideoFormatDescriptionGetDimensions($0) }
    }

    func resync() {
        waitKeyFrame = true
    }

    /// Returns a sample buffer for a displayable frame, or nil (parameter sets only, or waiting for a key frame).
    /// `formatChanged` is set when new parameter sets replaced the old ones.
    func sampleBuffer(for frame: StreamFrame, formatChanged: inout Bool) -> CMSampleBuffer? {
        var slices: [Data] = []
        var newSps: Data?
        var newPps: Data?
        var isKey = false
        for nal in annexBNalUnits(frame.data) {
            guard let first = nal.first else { continue }
            switch first & 0x1f {
            case 7: newSps = nal
            case 8: newPps = nal
            case 9, 6: continue // AUD, SEI
            case 5: isKey = true; slices.append(nal)
            default: slices.append(nal)
            }
        }
        if let s = newSps, let p = newPps, s != sps || p != pps {
            if let fd = makeFormat(sps: s, pps: p) {
                formatDescription = fd
                sps = s
                pps = p
                formatChanged = true
                waitKeyFrame = true
            }
        }
        guard let format = formatDescription, !slices.isEmpty else { return nil }
        if waitKeyFrame && !isKey { return nil }
        waitKeyFrame = false

        var avcc = Data(capacity: slices.reduce(0) { $0 + $1.count + 4 })
        for nal in slices {
            var len = UInt32(nal.count).bigEndian
            withUnsafeBytes(of: &len) { avcc.append(contentsOf: $0) }
            avcc.append(nal)
        }
        var block: CMBlockBuffer?
        guard CMBlockBufferCreateWithMemoryBlock(allocator: kCFAllocatorDefault, memoryBlock: nil,
                                                 blockLength: avcc.count, blockAllocator: kCFAllocatorDefault,
                                                 customBlockSource: nil, offsetToData: 0, dataLength: avcc.count,
                                                 flags: kCMBlockBufferAssureMemoryNowFlag, blockBufferOut: &block) == noErr,
              let block else { return nil }
        let copied = avcc.withUnsafeBytes {
            CMBlockBufferReplaceDataBytes(with: $0.baseAddress!, blockBuffer: block, offsetIntoDestination: 0, dataLength: avcc.count)
        }
        guard copied == noErr else { return nil }
        var timing = CMSampleTimingInfo(duration: .invalid,
                                        presentationTimeStamp: CMTime(value: CMTimeValue(frame.timestampMs), timescale: 1000),
                                        decodeTimeStamp: .invalid)
        var size = avcc.count
        var sample: CMSampleBuffer?
        guard CMSampleBufferCreateReady(allocator: kCFAllocatorDefault, dataBuffer: block, formatDescription: format,
                                        sampleCount: 1, sampleTimingEntryCount: 1, sampleTimingArray: &timing,
                                        sampleSizeEntryCount: 1, sampleSizeArray: &size, sampleBufferOut: &sample) == noErr,
              let sample else { return nil }
        if let attachments = CMSampleBufferGetSampleAttachmentsArray(sample, createIfNecessary: true),
           CFArrayGetCount(attachments) > 0 {
            let dict = unsafeBitCast(CFArrayGetValueAtIndex(attachments, 0), to: CFMutableDictionary.self)
            if displayImmediately {
                CFDictionarySetValue(dict, Unmanaged.passUnretained(kCMSampleAttachmentKey_DisplayImmediately).toOpaque(),
                                     Unmanaged.passUnretained(kCFBooleanTrue).toOpaque())
            }
            if !isKey {
                CFDictionarySetValue(dict, Unmanaged.passUnretained(kCMSampleAttachmentKey_NotSync).toOpaque(),
                                     Unmanaged.passUnretained(kCFBooleanTrue).toOpaque())
            }
        }
        return sample
    }

    private func makeFormat(sps: Data, pps: Data) -> CMVideoFormatDescription? {
        var fd: CMVideoFormatDescription?
        let status = sps.withUnsafeBytes { s in
            pps.withUnsafeBytes { p in
                let ptrs = [s.bindMemory(to: UInt8.self).baseAddress!, p.bindMemory(to: UInt8.self).baseAddress!]
                let sizes = [sps.count, pps.count]
                return CMVideoFormatDescriptionCreateFromH264ParameterSets(allocator: kCFAllocatorDefault,
                                                                          parameterSetCount: 2,
                                                                          parameterSetPointers: ptrs,
                                                                          parameterSetSizes: sizes,
                                                                          nalUnitHeaderLength: 4,
                                                                          formatDescriptionOut: &fd)
            }
        }
        return status == noErr ? fd : nil
    }
}

/// NSView that displays the mirrored TV picture and forwards keyboard and mouse input.
final class MirrorVideoView: NSView {
    let displayLayer = AVSampleBufferDisplayLayer()
    /// Keyboard input; return true if handled.
    var onKey: ((NSEvent) -> Bool)?
    /// Touch at a normalized point (0...1, origin top-left of the picture).
    var onTouch: ((CGPoint, Bool) -> Void)?
    var videoSizeProvider: (() -> CMVideoDimensions?)?
    /// The mouse moved over the picture (shows the full-screen controls).
    var onMouseMove: (() -> Void)?
    private var dragCount = 0

    override init(frame: NSRect) {
        super.init(frame: frame)
        wantsLayer = true
        layer = CALayer()
        layer?.backgroundColor = NSColor.black.cgColor
        displayLayer.videoGravity = .resizeAspect
        displayLayer.frame = bounds
        displayLayer.autoresizingMask = [.layerWidthSizable, .layerHeightSizable]
        layer?.addSublayer(displayLayer)
        addTrackingArea(NSTrackingArea(rect: .zero, options: [.mouseMoved, .activeAlways, .inVisibleRect], owner: self))
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) is not supported") }

    override var isFlipped: Bool { true }
    override var acceptsFirstResponder: Bool { true }
    override func acceptsFirstMouse(for event: NSEvent?) -> Bool { true }

    override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()
        window?.makeFirstResponder(self)
    }

    override func keyDown(with event: NSEvent) {
        if onKey?(event) != true { super.keyDown(with: event) }
    }

    /// Rectangle (in view coordinates) the video occupies inside the letterboxing.
    func videoRect() -> NSRect {
        let size = videoSizeProvider?() ?? CMVideoDimensions(width: 1280, height: 720)
        guard size.width > 0, size.height > 0 else { return bounds }
        return AVMakeRect(aspectRatio: NSSize(width: CGFloat(size.width), height: CGFloat(size.height)), insideRect: bounds)
    }

    private func normalized(_ event: NSEvent) -> CGPoint? {
        let p = convert(event.locationInWindow, from: nil)
        let r = videoRect()
        guard r.width > 1, r.height > 1 else { return nil }
        let x = min(max((p.x - r.minX) / r.width, 0), 1)
        let y = min(max((p.y - r.minY) / r.height, 0), 1)
        return CGPoint(x: x, y: y)
    }

    override func mouseMoved(with event: NSEvent) {
        onMouseMove?()
    }

    override func mouseDown(with event: NSEvent) {
        window?.makeFirstResponder(self)
        dragCount = 0
        if let p = normalized(event) { onTouch?(p, true) }
    }

    override func mouseDragged(with event: NSEvent) {
        dragCount += 1
        guard dragCount % 2 == 0, let p = normalized(event) else { return } // the app sends every 2nd move
        onTouch?(p, true)
    }

    override func mouseUp(with event: NSEvent) {
        if let p = normalized(event) { onTouch?(p, false) }
    }
}
