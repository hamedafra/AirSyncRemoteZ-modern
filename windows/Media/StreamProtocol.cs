using System.IO;
using System.Buffers.Binary;
using System.Net;
using System.Net.Sockets;

namespace AirSyncRemote.Media;

readonly record struct StreamFrame(uint Type, uint TimestampMs, byte[] Data);

/// <summary>
/// Reassembles the receiver's UDP datagrams into frames.
///
/// Every datagram starts with a 12-byte header: byte 1 bit 0x80 marks the last datagram of a frame, bytes 2-3
/// are a little-endian sequence number. The first datagram of a frame carries a 12-byte frame header
/// (little-endian type, timestamp in ms, length); the frame is the first <c>length</c> bytes of the
/// concatenated payloads. Types: 1 = P frame, 5 = IDR, 7 = SPS/PPS, 10 = AAC.
/// </summary>
sealed class FrameAssembler
{
    readonly MemoryStream _buffer = new(256 * 1024);
    bool _inFrame, _broken;
    uint _type, _ts;
    int _len, _lastSeq = -1;

    /// <summary>Datagrams were lost (the frame being assembled, if any, is dropped).</summary>
    public Action? OnLoss;

    static bool KnownType(uint t) => t is 1 or 5 or 7 or 10;

    public StreamFrame? Push(ReadOnlySpan<byte> d)
    {
        if (d.Length < 12) return null;
        int seq = d[2] | d[3] << 8;
        bool last = (d[1] & 0x80) != 0;
        bool gap = _lastSeq >= 0 && seq != ((_lastSeq + 1) & 0xffff);
        _lastSeq = seq;
        if (gap)
        {
            if (_inFrame) _broken = true;
            OnLoss?.Invoke();
        }
        if (!_inFrame)
        {
            if (d.Length < 24) return null;
            _type = BinaryPrimitives.ReadUInt32LittleEndian(d[12..]);
            _ts = BinaryPrimitives.ReadUInt32LittleEndian(d[16..]);
            _len = (int)BinaryPrimitives.ReadUInt32LittleEndian(d[20..]);
            if (!KnownType(_type) || _len <= 0 || _len > 8 << 20)
            {
                // Joined mid-frame: skip until the next frame boundary.
                _inFrame = !last;
                _broken = true;
                return null;
            }
            _buffer.SetLength(0);
            _buffer.Write(d[24..]);
            _inFrame = true;
            _broken = false;
        }
        else
        {
            _buffer.Write(d[12..]);
        }
        if (!last) return null;
        _inFrame = false;
        if (_broken)
        {
            _broken = false;
            OnLoss?.Invoke();
            return null;
        }
        if (_buffer.Length < _len) return null;
        var data = new byte[_len];
        Array.Copy(_buffer.GetBuffer(), data, _len);
        return new StreamFrame(_type, _ts, data);
    }
}

/// <summary>Receives datagrams on a UDP port on a background thread and hands reassembled frames to OnFrame.</summary>
sealed class UdpFrameReceiver
{
    public int Port { get; }
    readonly FrameAssembler _assembler = new();
    Socket? _socket;
    Thread? _thread;
    volatile bool _running;

    public Action<StreamFrame>? OnFrame;
    public Action? OnLoss { set => _assembler.OnLoss = value; }

    public UdpFrameReceiver(int port) => Port = port;

    public void Start()
    {
        var s = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
        s.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);
        s.ReceiveBufferSize = 4 << 20;
        s.ReceiveTimeout = 200;
        if (OperatingSystem.IsWindows())
        {
            // Don't let an ICMP "port unreachable" turn into a ConnectionReset error on this UDP socket.
            try { s.IOControl(unchecked((int)0x9800000C) /* SIO_UDP_CONNRESET */, new byte[] { 0 }, null); } catch { }
        }
        s.Bind(new IPEndPoint(IPAddress.Any, Port));
        _socket = s;
        _running = true;
        _thread = new Thread(Run) { IsBackground = true, Name = $"UDP {Port}", Priority = ThreadPriority.AboveNormal };
        _thread.Start();
    }

    public void Stop()
    {
        _running = false;
        try { _socket?.Close(); } catch { }
        _thread?.Join(1000);
        _socket = null;
    }

    void Run()
    {
        var buf = new byte[65536];
        while (_running)
        {
            int n;
            try
            {
                n = _socket!.Receive(buf);
            }
            catch (SocketException e) when (_running)
            {
                // Timeouts (reported as TimedOut on Windows, WouldBlock elsewhere) and transient errors: keep going.
                if (e.SocketErrorCode is not (SocketError.TimedOut or SocketError.WouldBlock))
                {
                    Log.Write($"UDP {Port} receive: {e.SocketErrorCode}");
                    Thread.Sleep(10);
                }
                continue;
            }
            catch
            {
                return; // socket closed by Stop()
            }
            if (n <= 0) continue;
            StreamFrame? f;
            try { f = _assembler.Push(buf.AsSpan(0, n)); }
            catch (Exception e) { Log.Error($"UDP {Port} frame", e); continue; }
            if (f is { } frame)
            {
                try { OnFrame?.Invoke(frame); }
                catch (Exception e) { Log.Error($"UDP {Port} handler", e); }
            }
        }
    }
}

/// <summary>One ADTS (AAC) frame including its header, as the Media Foundation AAC decoder takes it.</summary>
readonly record struct AdtsFrame(int SampleRate, int Channels, byte[] Data)
{
    static readonly int[] Rates = { 96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350 };

    public static List<AdtsFrame> Parse(byte[] b)
    {
        var list = new List<AdtsFrame>();
        int pos = 0;
        while (pos + 7 <= b.Length)
        {
            if (b[pos] != 0xff || (b[pos + 1] & 0xf0) != 0xf0) { pos++; continue; }
            bool noCrc = (b[pos + 1] & 1) != 0;
            int sfi = (b[pos + 2] >> 2) & 0xf;
            int ch = (b[pos + 2] & 1) << 2 | b[pos + 3] >> 6;
            int flen = (b[pos + 3] & 3) << 11 | b[pos + 4] << 3 | b[pos + 5] >> 5;
            int hlen = noCrc ? 7 : 9;
            if (flen < hlen || pos + flen > b.Length || sfi >= Rates.Length || ch == 0) break;
            list.Add(new AdtsFrame(Rates[sfi], ch, b.AsSpan(pos, flen).ToArray()));
            pos += flen;
        }
        return list;
    }
}
