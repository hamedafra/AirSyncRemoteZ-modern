using System.Buffers;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace AirSyncRemote.Media;

/// <summary>A decoded picture in BGRA, waiting for its time.</summary>
sealed class VideoFrame
{
    public required double Pts;
    public required int Width;
    public required int Height;
    public required byte[] Pixels; // rented from ArrayPool; return with Release()

    public void Release() => ArrayPool<byte>.Shared.Return(Pixels);
}

/// <summary>
/// Receives the receiver's mirror stream (UDP 8888 H.264, 8890 AAC), decodes it with Windows' built-in decoders
/// and plays the sound. Lip sync: the sound is the master clock; the UI asks <see cref="TakeFrameForNow"/> on
/// every screen refresh for the picture whose timestamp matches the sound being heard.
/// </summary>
sealed class MirrorController : IDisposable
{
    UdpFrameReceiver? _videoRx, _audioRx;
    readonly BlockingCollection<StreamFrame> _videoQueue = new(new ConcurrentQueue<StreamFrame>(), 120);
    Thread? _videoThread;
    volatile bool _running;
    readonly AudioOutput _audio = new();
    AacDecoder? _aac;
    double? _nextAudioPts;

    readonly object _framesGate = new();
    readonly List<VideoFrame> _frames = new();
    double? _latestVideoPts;
    readonly Stopwatch _clock = Stopwatch.StartNew();
    double _lastAudioHostMs = double.NegativeInfinity;
    double? _smoothedOffset;
    long _decodedFrames;

    public float Volume { get => _audio.Volume; set => _audio.Volume = value; }
    public bool Muted { get => _audio.Muted; set => _audio.Muted = value; }
    public bool HasPicture => Interlocked.Read(ref _decodedFrames) > 0;

    public void Start()
    {
        Stop();
        MftDecoder.Startup();
        _running = true;
        _nextAudioPts = null;
        _smoothedOffset = null;
        _lastAudioHostMs = double.NegativeInfinity;
        lock (_framesGate) _latestVideoPts = null;
        Interlocked.Exchange(ref _decodedFrames, 0);

        _videoThread = new Thread(VideoLoop) { IsBackground = true, Name = "H.264 decode", Priority = ThreadPriority.AboveNormal };
        _videoThread.Start();
        var v = new UdpFrameReceiver(8888) { OnFrame = f => _videoQueue.TryAdd(f) };
        var a = new UdpFrameReceiver(8890) { OnFrame = OnAudioFrame };
        v.Start();
        try
        {
            a.Start();
        }
        catch
        {
            v.Stop();
            throw;
        }
        _videoRx = v;
        _audioRx = a;
        Log.Write("mirror receiving on UDP 8888/8890");
    }

    public void Stop()
    {
        _running = false;
        _videoRx?.Stop();
        _audioRx?.Stop();
        _videoRx = _audioRx = null;
        _videoThread?.Join(2000);
        _videoThread = null;
        while (_videoQueue.TryTake(out _)) { }
        _audio.Stop();
        _aac?.Dispose();
        _aac = null;
        lock (_framesGate)
        {
            foreach (var f in _frames) f.Release();
            _frames.Clear();
        }
    }

    public void Dispose() => Stop();

    // ---------------------------------------------------------------- video

    void VideoLoop()
    {
        H264Decoder? decoder = null;
        try
        {
            decoder = new H264Decoder { };
            decoder.OnOutput = (p, len, pts) => OnPicture(decoder, p, len, pts);
            while (_running)
            {
                if (!_videoQueue.TryTake(out var frame, 100)) continue;
                lock (_framesGate) _latestVideoPts = frame.TimestampMs;
                try
                {
                    decoder.Decode(frame.Data, 0, frame.Data.Length, frame.TimestampMs);
                }
                catch (Exception e)
                {
                    Log.Error("video decode (resetting decoder)", e);
                    decoder.Dispose();
                    decoder = new H264Decoder();
                    var d = decoder;
                    decoder.OnOutput = (p, len, pts) => OnPicture(d, p, len, pts);
                }
            }
        }
        catch (Exception e)
        {
            Log.Error("video decoder", e);
        }
        finally
        {
            decoder?.Dispose();
        }
    }

    unsafe void OnPicture(H264Decoder d, IntPtr nv12, int length, double pts)
    {
        int w = d.Width, h = d.Height, stride = d.Stride;
        if (w <= 0 || h <= 0 || stride < w) return;
        int rows = length * 2 / 3 / stride; // luma rows in the buffer (may be padded beyond h)
        if (rows < h) rows = h;
        if ((long)stride * rows * 3 / 2 > length) return;
        var pixels = ArrayPool<byte>.Shared.Rent(w * h * 4);
        Nv12ToBgra((byte*)nv12, stride, rows, w, h, pixels);
        var frame = new VideoFrame { Pts = pts, Width = w, Height = h, Pixels = pixels };
        if (Interlocked.Increment(ref _decodedFrames) == 1) Log.Write($"first picture {w}x{h}");
        lock (_framesGate)
        {
            _frames.Add(frame);
            while (_frames.Count > 90)
            {
                _frames[0].Release();
                _frames.RemoveAt(0);
            }
        }
    }

    /// <summary>NV12 (BT.709 limited range for HD, BT.601 for SD) to BGRA.</summary>
    static unsafe void Nv12ToBgra(byte* src, int stride, int rows, int w, int h, byte[] dst)
    {
        bool hd = h >= 720;
        int cRv = hd ? 459 : 409, cGu = hd ? 55 : 100, cGv = hd ? 136 : 208, cBu = hd ? 541 : 516;
        byte* uvPlane = src + (long)stride * rows;
        fixed (byte* outBase = dst)
        {
            var o = (IntPtr)outBase;
            Parallel.For(0, (h + 1) / 2, pair =>
            {
                byte* outP = (byte*)o;
                byte* uv = uvPlane + (long)pair * stride;
                for (int y = pair * 2; y < Math.Min(h, pair * 2 + 2); y++)
                {
                    byte* yRow = src + (long)y * stride;
                    byte* d = outP + (long)y * w * 4;
                    for (int x = 0; x < w; x++)
                    {
                        int c = (yRow[x] - 16) * 298;
                        int u = uv[x & ~1] - 128;
                        int v = uv[(x & ~1) + 1] - 128;
                        int r = (c + cRv * v + 128) >> 8;
                        int g = (c - cGu * u - cGv * v + 128) >> 8;
                        int b = (c + cBu * u + 128) >> 8;
                        d[0] = (byte)(b < 0 ? 0 : b > 255 ? 255 : b);
                        d[1] = (byte)(g < 0 ? 0 : g > 255 ? 255 : g);
                        d[2] = (byte)(r < 0 ? 0 : r > 255 ? 255 : r);
                        d[3] = 255;
                        d += 4;
                    }
                }
            });
        }
    }

    // ---------------------------------------------------------------- audio

    void OnAudioFrame(StreamFrame frame)
    {
        // The first audio frame of a session carries 0xFFFFFFFF instead of a timestamp: continue from the
        // previous frame then (or skip it when there is none) so the clock never jumps.
        double pts;
        if (frame.TimestampMs != uint.MaxValue) pts = frame.TimestampMs;
        else if (_nextAudioPts is { } next) pts = next;
        else return;
        foreach (var adts in AdtsFrame.Parse(frame.Data))
        {
            try
            {
                if (_aac == null || _aac.SampleRate != adts.SampleRate || _aac.Channels != adts.Channels)
                {
                    _aac?.Dispose();
                    var dec = new AacDecoder(adts.SampleRate, adts.Channels);
                    dec.OnOutput = (p, len, outPts) =>
                    {
                        var pcm = new byte[len];
                        Marshal.Copy(p, pcm, 0, len);
                        _audio.Play(pcm, outPts, dec.SampleRate, dec.Channels);
                    };
                    _aac = dec;
                }
                _aac.Decode(adts.Data, 0, adts.Data.Length, pts);
            }
            catch (Exception e)
            {
                Log.Error("audio decode (resetting decoder)", e);
                _aac?.Dispose();
                _aac = null;
            }
            pts += 1024 * 1000.0 / adts.SampleRate;
        }
        _nextAudioPts = pts;
    }

    // ---------------------------------------------------------------- lip sync (UI thread)

    /// <summary>
    /// The receiver time that should be on screen now: the sound being heard; with no sound, the newest video
    /// minus a little (pictures then show almost as soon as they arrive).
    /// </summary>
    double? ClockMs()
    {
        double host = _clock.Elapsed.TotalMilliseconds;
        double target;
        if (_audio.HeardPts() is { } heard)
        {
            _lastAudioHostMs = host;
            target = heard;
        }
        else if (host - _lastAudioHostMs < 500 && _smoothedOffset is { } keep)
        {
            return host + keep; // a short gap in the sound: let the clock run on
        }
        else
        {
            double? v;
            lock (_framesGate) v = _latestVideoPts;
            if (v == null) return null;
            target = v.Value - 40;
        }
        double offset = target - host;
        _smoothedOffset = _smoothedOffset is { } s && Math.Abs(offset - s) < 150 ? s + 0.1 * (offset - s) : offset;
        return host + _smoothedOffset;
    }

    /// <summary>
    /// The newest decoded picture that is due now (older due pictures are dropped), or null if none is due.
    /// The caller must Release() it after drawing.
    /// </summary>
    public VideoFrame? TakeFrameForNow()
    {
        var now = ClockMs();
        lock (_framesGate)
        {
            if (_frames.Count == 0) return null;
            int pick = -1;
            for (int i = 0; i < _frames.Count; i++)
            {
                if (now == null || _frames[i].Pts <= now.Value + 8) pick = i;
                else break;
            }
            // A picture far in the future means the clocks disagree (e.g. the stream restarted): show it anyway.
            if (pick < 0 && now != null && _frames[0].Pts - now.Value > 1500) pick = 0;
            if (pick < 0) return null;
            for (int i = 0; i < pick; i++) _frames[i].Release();
            var frame = _frames[pick];
            _frames.RemoveRange(0, pick + 1);
            return frame;
        }
    }

    public string Diagnostics()
    {
        int queued;
        lock (_framesGate) queued = _frames.Count;
        return $"video: decoded {Interlocked.Read(ref _decodedFrames)}, waiting {queued}; {_audio.Diagnostics()}";
    }
}
