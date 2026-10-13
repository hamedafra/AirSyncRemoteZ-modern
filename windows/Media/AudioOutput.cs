using NAudio.CoreAudioApi;
using NAudio.Wave;

namespace AirSyncRemote.Media;

/// <summary>
/// PCM queue feeding WASAPI. Starts (and restarts after running dry) only once a small cushion is buffered,
/// caps the latency, and remembers which receiver timestamp went to the device at which stream position, so
/// the timestamp being heard right now can be looked up (the lip-sync master clock).
/// </summary>
sealed class ClockedPcmProvider : IWaveProvider
{
    readonly object _gate = new();
    sealed class Chunk
    {
        public required byte[] Data;
        public required double Pts;
        public int Offset;
    }

    readonly Queue<Chunk> _chunks = new();
    readonly LinkedList<(long start, int length, double pts)> _history = new();
    readonly int _cushionBytes, _maxBytes;
    readonly double _bytesPerMs;
    int _queuedBytes;
    long _deliveredBytes;
    bool _buffering = true;

    public WaveFormat WaveFormat { get; }
    public int Underruns { get; private set; }

    public ClockedPcmProvider(int sampleRate, int channels, int cushionMs = 120, int maxMs = 400)
    {
        WaveFormat = new WaveFormat(sampleRate, 16, channels);
        _bytesPerMs = WaveFormat.AverageBytesPerSecond / 1000.0;
        _cushionBytes = AlignedBytes(cushionMs);
        _maxBytes = AlignedBytes(maxMs);
    }

    int AlignedBytes(int ms) => (int)(ms * _bytesPerMs) / WaveFormat.BlockAlign * WaveFormat.BlockAlign;

    public void Add(byte[] pcm, double ptsMs)
    {
        lock (_gate)
        {
            _chunks.Enqueue(new Chunk { Data = pcm, Pts = ptsMs });
            _queuedBytes += pcm.Length;
            while (_queuedBytes > _maxBytes && _chunks.Count > 1)
            {
                var old = _chunks.Dequeue(); // too much latency: drop the oldest sound
                _queuedBytes -= old.Data.Length - old.Offset;
            }
        }
    }

    public int Read(Span<byte> buffer)
    {
        lock (_gate)
        {
            int filled = 0;
            if (_buffering && _queuedBytes >= _cushionBytes) _buffering = false;
            while (!_buffering && filled < buffer.Length && _chunks.Count > 0)
            {
                var c = _chunks.Peek();
                int n = Math.Min(buffer.Length - filled, c.Data.Length - c.Offset);
                c.Data.AsSpan(c.Offset, n).CopyTo(buffer[filled..]);
                _history.AddLast((_deliveredBytes + filled, n, c.Pts + c.Offset / _bytesPerMs));
                filled += n;
                _queuedBytes -= n;
                c.Offset += n;
                if (c.Offset >= c.Data.Length) _chunks.Dequeue();
            }
            if (filled < buffer.Length)
            {
                if (!_buffering && _chunks.Count == 0)
                {
                    _buffering = true; // ran dry: rebuild the cushion before playing on
                    Underruns++;
                }
                buffer[filled..].Clear();
            }
            _deliveredBytes += buffer.Length;
            while (_history.Count > 0 && _history.First!.Value.start + _history.First.Value.length < _deliveredBytes - AlignedBytes(3000))
                _history.RemoveFirst();
            return buffer.Length;
        }
    }

    /// <summary>Receiver timestamp (ms) at this stream position (seconds since start), or null if it was silence.</summary>
    public double? PtsAt(double streamSeconds)
    {
        long pos = (long)(streamSeconds * WaveFormat.AverageBytesPerSecond);
        lock (_gate)
        {
            for (var node = _history.Last; node != null; node = node.Previous)
            {
                var (start, length, pts) = node.Value;
                if (pos >= start && pos < start + length) return pts + (pos - start) / _bytesPerMs;
                if (start + length <= pos) return null;
            }
            return null;
        }
    }

    public double DeliveredSeconds
    {
        get { lock (_gate) return _deliveredBytes / (double)WaveFormat.AverageBytesPerSecond; }
    }

    public int QueuedMs
    {
        get { lock (_gate) return (int)(_queuedBytes / _bytesPerMs); }
    }
}

/// <summary>Plays decoded PCM through WASAPI (shared mode) and reports the receiver timestamp being heard.</summary>
sealed class AudioOutput : IDisposable
{
    WasapiPlayer? _player;
    ClockedPcmProvider? _provider;
    float _volume = 1;
    bool _muted;

    public float Volume { get => _volume; set { _volume = value; Apply(); } }
    public bool Muted { get => _muted; set { _muted = value; Apply(); } }

    void Apply()
    {
        try { if (_player != null) _player.Volume = _muted ? 0 : Math.Clamp(_volume, 0, 1); } catch { }
    }

    public void Play(byte[] pcm, double ptsMs, int sampleRate, int channels)
    {
        var p = _provider;
        if (p == null || p.WaveFormat.SampleRate != sampleRate || p.WaveFormat.Channels != channels)
            p = Restart(sampleRate, channels);
        p?.Add(pcm, ptsMs);
    }

    ClockedPcmProvider? Restart(int sampleRate, int channels)
    {
        Stop();
        try
        {
            var provider = new ClockedPcmProvider(sampleRate, channels);
            var player = new WasapiPlayerBuilder().WithSharedMode().WithLatency(60).Build();
            player.Init(provider);
            _provider = provider;
            _player = player;
            Apply();
            player.Play();
            Log.Write($"audio output {sampleRate} Hz x{channels} on '{SafeDeviceName(player)}', device format {player.OutputWaveFormat}");
            return provider;
        }
        catch (Exception e)
        {
            Log.Error("audio output", e);
            return null;
        }
    }

    static string SafeDeviceName(WasapiPlayer p)
    {
        try { return p.DeviceFriendlyName ?? "default"; } catch { return "default"; }
    }

    /// <summary>The receiver timestamp (ms) being heard right now, or null when no sound is playing.</summary>
    public double? HeardPts()
    {
        var player = _player;
        var provider = _provider;
        if (player == null || provider == null) return null;
        try
        {
            var fmt = player.OutputWaveFormat;
            double played = player.GetPosition() / (double)fmt.AverageBytesPerSecond;
            return provider.PtsAt(played);
        }
        catch
        {
            return null;
        }
    }

    public string Diagnostics()
    {
        var player = _player;
        var provider = _provider;
        if (player == null || provider == null) return "audio: off";
        double played = 0;
        try { played = player.GetPosition() / (double)player.OutputWaveFormat.AverageBytesPerSecond; } catch { }
        return $"audio: queued {provider.QueuedMs} ms, device behind by {(provider.DeliveredSeconds - played) * 1000:F0} ms, underruns {provider.Underruns}";
    }

    public void Stop()
    {
        var player = _player;
        _player = null;
        _provider = null;
        if (player == null) return;
        try { player.Stop(); } catch { }
        try { player.Dispose(); } catch { }
    }

    public void Dispose() => Stop();
}
