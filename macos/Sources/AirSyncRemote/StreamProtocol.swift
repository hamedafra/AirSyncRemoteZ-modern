import Foundation

/// Frame types used by the STB's mirror stream.
enum FrameType: UInt32 {
    case pFrame = 1
    case idr = 5
    case spsPps = 7
    case aac = 10
}

struct StreamFrame {
    let type: UInt32
    let timestampMs: UInt32
    let data: Data
}

/// Reassembles the STB's UDP datagrams into frames.
///
/// Every datagram starts with a 12-byte header: byte 1 bit 0x80 marks the last datagram of a frame,
/// bytes 2-3 are a little-endian sequence number. The first datagram of a frame carries a 12-byte
/// frame header (little-endian type, timestamp in ms, length); the frame is the first `length`
/// bytes of the concatenated payloads.
final class FrameAssembler {
    private var buffer = Data()
    private var inFrame = false
    private var broken = false
    private var frameType: UInt32 = 0
    private var frameTs: UInt32 = 0
    private var frameLen = 0
    private var lastSeq = -1

    /// Called when datagrams were lost (the frame being assembled, if any, is dropped).
    var onLoss: (() -> Void)?

    func push(_ d: UnsafeRawBufferPointer) -> StreamFrame? {
        guard d.count >= 12 else { return nil }
        let seq = Int(d[2]) | Int(d[3]) << 8
        let last = d[1] & 0x80 != 0
        let gap = lastSeq >= 0 && seq != (lastSeq + 1) & 0xffff
        lastSeq = seq
        if gap {
            if inFrame { broken = true }
            onLoss?()
        }
        if !inFrame {
            guard d.count >= 24 else { return nil }
            frameType = d.le32(12)
            frameTs = d.le32(16)
            frameLen = Int(d.le32(20))
            guard FrameType(rawValue: frameType) != nil, frameLen > 0, frameLen <= 8 << 20 else {
                // Joined mid-frame: skip until the next frame boundary.
                inFrame = !last
                broken = true
                return nil
            }
            buffer.removeAll(keepingCapacity: true)
            buffer.append(contentsOf: d[24...])
            inFrame = true
            broken = false
        } else {
            buffer.append(contentsOf: d[12...])
        }
        guard last else { return nil }
        inFrame = false
        defer { broken = false }
        if broken {
            onLoss?()
            return nil
        }
        guard buffer.count >= frameLen else { return nil }
        return StreamFrame(type: frameType, timestampMs: frameTs, data: buffer.prefix(frameLen))
    }
}

extension UnsafeRawBufferPointer {
    func le32(_ o: Int) -> UInt32 {
        UInt32(self[o]) | UInt32(self[o + 1]) << 8 | UInt32(self[o + 2]) << 16 | UInt32(self[o + 3]) << 24
    }
}

/// Splits an Annex-B H.264 byte stream into NAL units (without start codes).
func annexBNalUnits(_ data: Data) -> [Data] {
    var units: [Data] = []
    data.withUnsafeBytes { (p: UnsafeRawBufferPointer) in
        let n = p.count
        var starts: [(code: Int, payload: Int)] = []
        var i = 0
        while i + 2 < n {
            if p[i] == 0 && p[i + 1] == 0 && p[i + 2] == 1 {
                let code = (i > 0 && p[i - 1] == 0) ? i - 1 : i
                starts.append((code, i + 3))
                i += 3
            } else {
                i += 1
            }
        }
        for (k, s) in starts.enumerated() {
            let end = k + 1 < starts.count ? starts[k + 1].code : n
            if end > s.payload {
                units.append(data.subdata(in: data.startIndex + s.payload ..< data.startIndex + end))
            }
        }
    }
    return units
}

struct ADTSFrame {
    let profile: Int      // audio object type (2 = AAC-LC)
    let sampleRateIndex: Int
    let channels: Int
    let payload: Data     // raw AAC, ADTS header removed

    static let sampleRates = [96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350]
    var sampleRate: Int { ADTSFrame.sampleRates[sampleRateIndex] }

    /// Parses all ADTS frames in `data`.
    static func parse(_ data: Data) -> [ADTSFrame] {
        var out: [ADTSFrame] = []
        let b = [UInt8](data)
        var pos = 0
        while pos + 7 <= b.count {
            guard b[pos] == 0xff, b[pos + 1] & 0xf0 == 0xf0 else { pos += 1; continue }
            let noCrc = b[pos + 1] & 1 != 0
            let profile = Int(b[pos + 2] >> 6) + 1
            let sfi = Int(b[pos + 2] >> 2) & 0xf
            let ch = Int(b[pos + 2] & 1) << 2 | Int(b[pos + 3] >> 6)
            let flen = Int(b[pos + 3] & 3) << 11 | Int(b[pos + 4]) << 3 | Int(b[pos + 5] >> 5)
            let hlen = noCrc ? 7 : 9
            guard flen >= hlen, pos + flen <= b.count, sfi < sampleRates.count, ch > 0 else { break }
            out.append(ADTSFrame(profile: profile, sampleRateIndex: sfi, channels: ch,
                                 payload: Data(b[(pos + hlen) ..< (pos + flen)])))
            pos += flen
        }
        return out
    }
}
