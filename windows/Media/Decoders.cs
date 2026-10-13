using System.Runtime.InteropServices;
using Vortice.MediaFoundation;

namespace AirSyncRemote.Media;

/// <summary>
/// A synchronous Media Foundation decoder (Windows' built-in H.264 or AAC decoder), fed one compressed frame at
/// a time. Decoded output is handed to <see cref="OnOutput"/> as a contiguous buffer with its timestamp.
/// </summary>
abstract class MftDecoder : IDisposable
{
    static readonly Guid MfLowLatency = new("9c27891a-ed7a-40e1-88e8-b22727a024ee");
    const uint EnumSyncLocalSorted = 0x1 | 0x10 | 0x40; // MFT_ENUM_FLAG_SYNCMFT | LOCALMFT | SORTANDFILTER
    const int MfENotAccepting = unchecked((int)0xC00D36B5);

    static bool _started;
    protected IMFTransform? Transform;
    protected IMFMediaType? OutputType;

    /// <summary>Decoded data (pointer valid only during the call), its length and timestamp in ms.</summary>
    public delegate void OutputHandler(IntPtr data, int length, double ptsMs);
    public OutputHandler? OnOutput;

    public static void Startup()
    {
        if (_started) return;
        MediaFactory.MFStartup(true).CheckError();
        _started = true;
    }

    protected static IMFTransform Create(Guid category, Guid major, Guid subtype)
    {
        using var all = MediaFactory.MFTEnumEx(category, EnumSyncLocalSorted,
            new RegisterTypeInfo { GuidMajorType = major, GuidSubtype = subtype }, null);
        foreach (var activate in all)
        {
            var t = activate.ActivateObject<IMFTransform>();
            Log.Write($"decoder for {subtype}: {SafeName(activate)}");
            return t;
        }
        throw new InvalidOperationException($"Windows has no decoder for {subtype}");
    }

    static string SafeName(IMFActivate a)
    {
        try { return a.FriendlyName ?? "?"; } catch { return "?"; }
    }

    protected void EnableLowLatency()
    {
        try { Transform!.Attributes.Set(MfLowLatency, 1u); }
        catch (Exception e) { Log.Error("decoder low latency", e); }
    }

    /// <summary>Picks and sets the first output type the predicate accepts.</summary>
    protected void ChooseOutputType(Func<IMFMediaType, bool> accept)
    {
        for (int i = 0; ; i++)
        {
            IMFMediaType t;
            try { t = Transform!.GetOutputAvailableType(0, i); }
            catch { break; }
            if (accept(t))
            {
                Transform!.SetOutputType(0, t, 0);
                OutputType?.Dispose();
                OutputType = t;
                OnOutputTypeChanged();
                return;
            }
            t.Dispose();
        }
        throw new InvalidOperationException("decoder offers no usable output format");
    }

    protected virtual void OnOutputTypeChanged() { }
    protected abstract void RenegotiateOutput();

    protected void BeginStreaming()
    {
        Transform!.ProcessMessage(TMessageType.MessageNotifyBeginStreaming, UIntPtr.Zero);
        Transform!.ProcessMessage(TMessageType.MessageNotifyStartOfStream, UIntPtr.Zero);
    }

    /// <summary>Decodes one compressed frame.</summary>
    public void Decode(byte[] data, int offset, int length, double ptsMs)
    {
        if (Transform == null) return;
        using var sample = MediaFactory.MFCreateSample();
        using var buffer = MediaFactory.MFCreateMemoryBuffer(length);
        buffer.Lock(out var p, out _, out _);
        Marshal.Copy(data, offset, p, length);
        buffer.Unlock();
        buffer.CurrentLength = length;
        sample.AddBuffer(buffer);
        sample.SampleTime = (long)(ptsMs * 10_000); // 100 ns units
        try
        {
            Transform.ProcessInput(0, sample, 0);
        }
        catch (SharpGen.Runtime.SharpGenException e) when (e.HResult == MfENotAccepting)
        {
            Drain();
            Transform.ProcessInput(0, sample, 0);
        }
        Drain();
    }

    /// <summary>Collects all output the decoder has ready.</summary>
    void Drain()
    {
        var t = Transform!;
        for (int guard = 0; guard < 64; guard++)
        {
            var info = t.GetOutputStreamInfo(0);
            bool provides = (info.Flags & (int)OutputStreamInfoFlags.OutputStreamProvidesSamples) != 0;
            IMFSample? mine = null;
            if (!provides)
            {
                mine = MediaFactory.MFCreateSample();
                using var b = MediaFactory.MFCreateMemoryBuffer(Math.Max(info.Size, 4096));
                mine.AddBuffer(b);
            }
            var db = new OutputDataBuffer { StreamID = 0, Sample = mine! };
            var r = t.ProcessOutput(ProcessOutputFlags.None, 1, ref db, out _);
            db.Events?.Dispose();
            if (r == ResultCode.TransformNeedMoreInput)
            {
                mine?.Dispose();
                return;
            }
            if (r == ResultCode.TransformStreamChange)
            {
                mine?.Dispose();
                RenegotiateOutput();
                continue;
            }
            if (r.Failure)
            {
                mine?.Dispose();
                Log.Write($"decoder output error 0x{r.Code:X8}");
                return;
            }
            var outSample = db.Sample;
            try
            {
                double pts = outSample.SampleTime / 10_000.0;
                using var contiguous = outSample.ConvertToContiguousBuffer();
                contiguous.Lock(out var p, out _, out var len);
                try { OnOutput?.Invoke(p, len, pts); }
                finally { contiguous.Unlock(); }
            }
            catch (Exception e)
            {
                Log.Error("decoder output", e);
            }
            finally
            {
                // A sample we supplied comes back as the same COM object (possibly in a new wrapper): release once.
                bool same = mine != null && outSample.NativePointer == mine.NativePointer;
                if (!same) outSample.Dispose();
                mine?.Dispose();
            }
        }
    }

    public void Flush()
    {
        try { Transform?.ProcessMessage(TMessageType.MessageCommandFlush, UIntPtr.Zero); } catch { }
    }

    public void Dispose()
    {
        try { Transform?.ProcessMessage(TMessageType.MessageNotifyEndStreaming, UIntPtr.Zero); } catch { }
        OutputType?.Dispose();
        Transform?.Dispose();
        Transform = null;
    }
}

/// <summary>H.264 (Annex B, SPS/PPS in-band) to NV12.</summary>
sealed class H264Decoder : MftDecoder
{
    public int Width { get; private set; }
    public int Height { get; private set; }
    /// <summary>Bytes per row of the luma plane in the output buffer.</summary>
    public int Stride { get; private set; }

    public H264Decoder()
    {
        Transform = Create(TransformCategoryGuids.VideoDecoder, MediaTypeGuids.Video, VideoFormatGuids.H264);
        EnableLowLatency();
        using var input = MediaFactory.MFCreateMediaType();
        input.Set(MediaTypeAttributeKeys.MajorType, MediaTypeGuids.Video);
        input.Set(MediaTypeAttributeKeys.Subtype, VideoFormatGuids.H264);
        input.Set(MediaTypeAttributeKeys.FrameSize, (1280UL << 32) | 720UL);
        Transform.SetInputType(0, input, 0);
        RenegotiateOutput();
        BeginStreaming();
    }

    protected override void RenegotiateOutput() =>
        ChooseOutputType(t => t.GetGUID(MediaTypeAttributeKeys.Subtype) == VideoFormatGuids.NV12);

    protected override void OnOutputTypeChanged()
    {
        var size = OutputType!.GetUInt64(MediaTypeAttributeKeys.FrameSize);
        Width = (int)(size >> 32);
        Height = (int)(size & 0xffffffff);
        try { Stride = (int)OutputType.GetUInt32(MediaTypeAttributeKeys.DefaultStride); }
        catch { Stride = Width; }
        if (Stride <= 0) Stride = Width;
        Log.Write($"video output NV12 {Width}x{Height} stride {Stride}");
    }
}

/// <summary>AAC (ADTS frames) to 16-bit PCM.</summary>
sealed class AacDecoder : MftDecoder
{
    public int SampleRate { get; }
    public int Channels { get; }

    public AacDecoder(int sampleRate, int channels)
    {
        SampleRate = sampleRate;
        Channels = channels;
        Transform = Create(TransformCategoryGuids.AudioDecoder, MediaTypeGuids.Audio, AudioFormatGuids.Aac);
        using var input = MediaFactory.MFCreateMediaType();
        input.Set(MediaTypeAttributeKeys.MajorType, MediaTypeGuids.Audio);
        input.Set(MediaTypeAttributeKeys.Subtype, AudioFormatGuids.Aac);
        input.Set(MediaTypeAttributeKeys.AudioSamplesPerSecond, (uint)sampleRate);
        input.Set(MediaTypeAttributeKeys.AudioNumChannels, (uint)channels);
        input.Set(MediaTypeAttributeKeys.AudioBitsPerSample, 16u);
        input.Set(MediaTypeAttributeKeys.AacPayloadType, 1u); // ADTS
        input.Set(MediaTypeAttributeKeys.AacAudioProfileLevelIndication, 0xFEu);
        // HEAACWAVEINFO after the WAVEFORMATEX: payload type 1 (ADTS), profile 0xFE, rest zero.
        var userData = new byte[12];
        userData[0] = 1;
        userData[2] = 0xFE;
        input.SetBlob(MediaTypeAttributeKeys.UserData, userData);
        Transform.SetInputType(0, input, 0);
        RenegotiateOutput();
        BeginStreaming();
        Log.Write($"audio decoder AAC {sampleRate} Hz x{channels} -> PCM16");
    }

    protected override void RenegotiateOutput() =>
        ChooseOutputType(t => t.GetGUID(MediaTypeAttributeKeys.Subtype) == AudioFormatGuids.Pcm &&
                              t.GetUInt32(MediaTypeAttributeKeys.AudioBitsPerSample) == 16);
}
