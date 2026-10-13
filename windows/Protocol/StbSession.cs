using System.Net.Http;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace AirSyncRemote.Protocol;

/// <summary>Linux input key codes the receiver understands (sent through the Vinput channel).</summary>
enum Key
{
    Home = 102, Menu = 139, Back = 158, Ok = 28,
    Up = 103, Down = 108, Left = 105, Right = 106,
    VolumeUp = 115, VolumeDown = 114, Mute = 113, Power = 116,
    ChannelUp = 402, ChannelDown = 403,
    Red = 59, Green = 60, Yellow = 61, Blue = 62,
    PlayPause = 164, Stop = 128, Info = 358,
    Delete = 14, Space = 57,
    Digit1 = 2, Digit2, Digit3, Digit4, Digit5, Digit6, Digit7, Digit8, Digit9, Digit0,
}

static class Keys
{
    public static Key Digit(int n) => n == 0 ? Key.Digit0 : (Key)(n + 1);

    public const int Shift = 42;
    static readonly Dictionary<char, int> Plain = BuildPlain();
    static readonly Dictionary<char, char> Shifted = new()
    {
        ['!'] = '1', ['@'] = '2', ['#'] = '3', ['$'] = '4', ['%'] = '5', ['^'] = '6', ['&'] = '7', ['*'] = '8', ['('] = '9', [')'] = '0',
        ['_'] = '-', ['+'] = '=', ['{'] = '[', ['}'] = ']', [':'] = ';', ['"'] = '\'', ['~'] = '`', ['|'] = '\\', ['<'] = ',', ['>'] = '.', ['?'] = '/',
    };

    static Dictionary<char, int> BuildPlain()
    {
        var m = new Dictionary<char, int>();
        var letters = new (char, int)[] { ('a', 30), ('b', 48), ('c', 46), ('d', 32), ('e', 18), ('f', 33), ('g', 34), ('h', 35), ('i', 23),
            ('j', 36), ('k', 37), ('l', 38), ('m', 50), ('n', 49), ('o', 24), ('p', 25), ('q', 16), ('r', 19), ('s', 31), ('t', 20),
            ('u', 22), ('v', 47), ('w', 17), ('x', 45), ('y', 21), ('z', 44) };
        foreach (var (c, k) in letters) m[c] = k;
        for (int i = 0; i < 10; i++) m["1234567890"[i]] = i + 2;
        var other = new (char, int)[] { ('-', 12), ('=', 13), ('[', 26), (']', 27), (';', 39), ('\'', 40), ('`', 41), ('\\', 43),
            (',', 51), ('.', 52), ('/', 53), (' ', 57), ('\n', 28), ('\t', 15) };
        foreach (var (c, k) in other) m[c] = k;
        return m;
    }

    /// <summary>Key code and whether shift is needed for a character on a US layout.</summary>
    public static (int code, bool shift)? ForChar(char c)
    {
        if (Plain.TryGetValue(c, out var k)) return (k, false);
        if (char.IsUpper(c) && Plain.TryGetValue(char.ToLowerInvariant(c), out k)) return (k, true);
        if (Shifted.TryGetValue(c, out var b) && Plain.TryGetValue(b, out k)) return (k, true);
        return null;
    }
}

enum SessionState { Disconnected, Connecting, Connected, Failed }

/// <summary>
/// Talks to the receiver the way the Android app does: UPnP SOAP for the session and mirror, UDP for keys and
/// touch. Events are raised on the thread that caused them; the UI marshals them itself.
/// </summary>
sealed class StbSession
{
    public SessionState State { get; private set; } = SessionState.Disconnected;
    public StbDevice? Device { get; private set; }
    public string Status { get; private set; } = "";
    public bool Mirroring { get; private set; }
    public string LocalIp { get; private set; } = "";

    /// <summary>State or status changed.</summary>
    public event Action? Changed;

    string _supportVideo = "h264";
    int _vinputPort = 8822;
    Socket? _keySocket;
    IPEndPoint? _keyTarget;
    CancellationTokenSource? _pingCts;
    string? _subscriptionId;
    readonly EventServer _events = new();
    readonly Dictionary<string, Dictionary<string, List<string>>> _scpdCache = new();
    static readonly HttpClient Http = new() { Timeout = Timeout.InfiniteTimeSpan };

    public string RemoteId { get; } = LoadRemoteId();

    static string LoadRemoteId()
    {
        var s = Settings.Current;
        if (!string.IsNullOrEmpty(s.RemoteId)) return s.RemoteId!;
        // Locally administered MAC-style ID, stable per install (the Android app sends the Wi-Fi MAC).
        var bytes = new byte[6];
        Random.Shared.NextBytes(bytes);
        bytes[0] = 0x02;
        s.RemoteId = string.Join(":", bytes.Select(b => b.ToString("x2")));
        s.Save();
        return s.RemoteId;
    }

    void Set(SessionState state, string status)
    {
        State = state;
        Status = status;
        Changed?.Invoke();
    }

    // ---------------------------------------------------------------- connection

    public async Task ConnectAsync(StbDevice dev)
    {
        await DisconnectAsync();
        Device = dev;
        Set(SessionState.Connecting, $"Connecting to {dev.Name}…");
        var ip = NetworkInfo.LocalAddressToward(dev.Ip);
        if (ip == null)
        {
            Set(SessionState.Failed, $"No network route to {dev.Ip}");
            return;
        }
        LocalIp = ip;
        try
        {
            await HelloAsync();
            try { _vinputPort = await QueryPortAsync("VinputControlServer", "HI_UPNP_VAR_VinpuServerURI"); }
            catch (Exception e) { Log.Error("vinput port (using 8822)", e); _vinputPort = 8822; }
            OpenKeySocket();
            Set(SessionState.Connected, $"Connected to {dev.Name}");
            Log.Write($"connected to {dev.Name} {dev.Ip} from {LocalIp} as {RemoteId}, vinput {_vinputPort}");
            StartPing();
            await SubscribeAsync();
        }
        catch (Exception e)
        {
            Log.Error("connect", e);
            Set(SessionState.Failed, $"Could not connect: {e.Message}");
        }
    }

    public async Task DisconnectAsync()
    {
        _pingCts?.Cancel();
        _pingCts = null;
        if (Device == null || State != SessionState.Connected)
        {
            Cleanup();
            return;
        }
        if (Mirroring) await StopMirrorAsync();
        try { await SoapAsync("AccessControlServer", "Byebye", new() { ("RemoteID", RemoteId) }, 3); } catch { }
        await UnsubscribeAsync();
        Cleanup();
    }

    /// <summary>Blocking, time-limited goodbye for app exit.</summary>
    public void ShutdownNow()
    {
        try { Task.Run(DisconnectAsync).Wait(TimeSpan.FromSeconds(5)); } catch { }
        Cleanup();
    }

    void Cleanup()
    {
        _events.Stop();
        _subscriptionId = null;
        _keySocket?.Dispose();
        _keySocket = null;
        Mirroring = false;
        Set(SessionState.Disconnected, "");
    }

    async Task HelloAsync()
    {
        var resp = await SoapAsync("AccessControlServer", "Hello", new()
        {
            ("RemoteID", RemoteId), ("RemoteIP", LocalIp), ("Version", "3.0.1.0"),
            ("DeviceInfo", "Windows PC"), ("SDKVersion", "28"),
        }, 4);
        var current = Xml.Text(resp, "CurrentRemoteID") ?? "";
        if (current.Length > 0 && current != RemoteId)
            throw new Exception($"the receiver is controlled by another remote ({current})");
        var v = Xml.Text(resp, "SupportVideo");
        if (!string.IsNullOrEmpty(v)) _supportVideo = v;
    }

    async Task<int> QueryPortAsync(string service, string variable)
    {
        var svc = Device?.Service(service) ?? throw new Exception($"no {service}");
        const string ns = "urn:schemas-upnp-org:control-1-0";
        var body = $"<u:QueryStateVariable xmlns:u=\"{ns}\"><u:varName>{variable}</u:varName></u:QueryStateVariable>";
        var resp = await PostAsync(svc.ControlUrl, $"{ns}#QueryStateVariable", body, 4);
        var value = Xml.Text(resp, "return") ?? "";
        var parts = value.Split(':');
        if (parts.Length >= 3 && int.TryParse(new string(parts[2].Where(char.IsDigit).ToArray()), out var port)) return port;
        throw new Exception($"bad {variable}: {value}");
    }

    void StartPing()
    {
        var cts = new CancellationTokenSource();
        _pingCts = cts;
        var start = DateTime.UtcNow;
        _ = Task.Run(async () =>
        {
            int failures = 0;
            while (!cts.IsCancellationRequested)
            {
                var pingTime = ((int)(DateTime.UtcNow - start).TotalMilliseconds).ToString();
                try
                {
                    var resp = await SoapAsync("AccessControlServer", "Ping", new() { ("RemoteID", RemoteId), ("PingTime", pingTime) }, 5);
                    failures = 0;
                    var owner = Xml.Text(resp, "CurrentRemoteID") ?? RemoteId;
                    if (owner != RemoteId && owner != "0.0.0.0" && owner.Length > 0)
                    {
                        Lost(owner == "0.0.0.1" ? "The receiver went to standby" :
                             owner.Contains("OFF") ? "The receiver left" : "Another remote took over the receiver");
                        return;
                    }
                    if (State != SessionState.Connected || Status != $"Connected to {Device?.Name}")
                        Set(SessionState.Connected, $"Connected to {Device?.Name}");
                }
                catch (Exception) when (!cts.IsCancellationRequested)
                {
                    failures++;
                    if (failures >= 5)
                    {
                        Set(State, "Connection unstable, reconnecting…");
                        try { await HelloAsync(); } catch { }
                    }
                    if (failures >= 15)
                    {
                        Lost("Connection to the receiver lost");
                        return;
                    }
                }
                try { await Task.Delay(1500, cts.Token); } catch { return; }
            }
        });
    }

    void Lost(string reason)
    {
        Log.Write("session lost: " + reason);
        _pingCts?.Cancel();
        _pingCts = null;
        _events.Stop();
        Mirroring = false;
        Set(SessionState.Failed, reason);
    }

    // ---------------------------------------------------------------- events (GENA)

    async Task SubscribeAsync()
    {
        var url = Device?.Service("AccessControlServer")?.EventSubUrl;
        if (url == null) return;
        var port = _events.Start(HandleNotify);
        if (port == null) return;
        try
        {
            using var req = new HttpRequestMessage(new HttpMethod("SUBSCRIBE"), url);
            req.Headers.TryAddWithoutValidation("CALLBACK", $"<http://{LocalIp}:{port}/evetSub>");
            req.Headers.TryAddWithoutValidation("NT", "upnp:event");
            req.Headers.TryAddWithoutValidation("TIMEOUT", "infinite");
            using var cts = new CancellationTokenSource(4000);
            using var resp = await Http.SendAsync(req, cts.Token);
            if (resp.Headers.TryGetValues("SID", out var sid)) _subscriptionId = sid.FirstOrDefault();
        }
        catch (Exception e)
        {
            Log.Error("subscribe", e);
        }
        var ping = _pingCts;
        _ = Task.Run(async () =>
        {
            while (ping != null && !ping.IsCancellationRequested)
            {
                try { await Task.Delay(140_000, ping.Token); } catch { return; }
                if (_subscriptionId == null) return;
                try
                {
                    using var r = new HttpRequestMessage(new HttpMethod("SUBSCRIBE"), url);
                    r.Headers.TryAddWithoutValidation("SID", _subscriptionId);
                    r.Headers.TryAddWithoutValidation("TIMEOUT", "infinite");
                    using var cts = new CancellationTokenSource(4000);
                    using var _ = await Http.SendAsync(r, cts.Token);
                }
                catch { }
            }
        });
    }

    async Task UnsubscribeAsync()
    {
        var url = Device?.Service("AccessControlServer")?.EventSubUrl;
        if (_subscriptionId == null || url == null) return;
        try
        {
            using var r = new HttpRequestMessage(new HttpMethod("UNSUBSCRIBE"), url);
            r.Headers.TryAddWithoutValidation("SID", _subscriptionId);
            using var cts = new CancellationTokenSource(3000);
            using var _ = await Http.SendAsync(r, cts.Token);
        }
        catch { }
    }

    void HandleNotify(string body)
    {
        var list = Xml.Text(body, "HI_UPNP_VAR_AccessRemoteList");
        if (string.IsNullOrEmpty(list)) return;
        if (list != RemoteId && list != "0.0.0.0")
            Lost(list == "0.0.0.1" ? "The receiver went to standby" : "Another remote took over the receiver");
    }

    // ---------------------------------------------------------------- mirror

    public async Task<bool> StartMirrorAsync()
    {
        if (State != SessionState.Connected) return false;
        var param = $"fps=15,resend=0,cip={LocalIp},cport=8888,video_play=1,source={_supportVideo}";
        try
        {
            await SoapAsync("MirrorControlServer", "SetMirrorParameter", new() { ("RemoteID", RemoteId), ("MirrorParameter", param) }, 4);
            await SoapAsync("MirrorControlServer", "StartMirror", new() { ("RemoteID", RemoteId) }, 4);
            Mirroring = true;
            Log.Write("mirror started: " + param);
            return true;
        }
        catch (Exception e)
        {
            Log.Error("start mirror", e);
            Set(State, "Mirror failed: " + e.Message);
            return false;
        }
    }

    public async Task StopMirrorAsync()
    {
        Mirroring = false;
        try { await SoapAsync("MirrorControlServer", "StopMirror", new() { ("RemoteID", RemoteId) }, 3); } catch { }
    }

    // ---------------------------------------------------------------- keys and touch (UDP to the Vinput port)

    void OpenKeySocket()
    {
        _keySocket?.Dispose();
        _keySocket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
        _keyTarget = new IPEndPoint(IPAddress.Parse(Device!.Ip), _vinputPort);
    }

    void SendUdp(byte[] packet)
    {
        var s = _keySocket;
        if (s == null || _keyTarget == null) return;
        try { s.SendTo(packet, _keyTarget); }
        catch (Exception e) { Log.Error($"key/touch packet to {_keyTarget}", e); }
    }

    static void Header(List<byte> p, ushort type, ushort length)
    {
        foreach (ushort v in new ushort[] { 1, 2, type, length, 0, 0 }) { p.Add((byte)v); p.Add((byte)(v >> 8)); }
    }

    static void Le32(List<byte> p, int v) => p.AddRange(BitConverter.GetBytes(v)); // Windows is little endian

    public void SendKeyCode(int code, bool down)
    {
        var p = new List<byte>(22);
        Header(p, 2, 22);
        p.Add(0x07); p.Add(0x01);
        Le32(p, code);
        Le32(p, down ? 1 : 0);
        SendUdp(p.ToArray());
    }

    public void Press(Key key)
    {
        SendKeyCode((int)key, true);
        SendKeyCode((int)key, false);
    }

    public void Type(string text)
    {
        foreach (var c in text)
        {
            if (Keys.ForChar(c) is not { } k) continue;
            if (k.shift) SendKeyCode(Keys.Shift, true);
            SendKeyCode(k.code, true);
            SendKeyCode(k.code, false);
            if (k.shift) SendKeyCode(Keys.Shift, false);
        }
    }

    /// <summary>Touch on the mirrored screen, in receiver coordinates (0…1279, 0…719).</summary>
    public void Touch(int x, int y, bool pressed)
    {
        var p = new List<byte>(76);
        Header(p, 4, 76);
        Le32(p, 2);
        Le32(p, x); Le32(p, y); Le32(p, pressed ? 1 : 0);
        p.AddRange(new byte[4 * 12]);
        var packet = p.ToArray();
        SendUdp(packet);
        if (!pressed) SendUdp(packet); // the app sends release twice
    }

    // ---------------------------------------------------------------- SOAP

    async Task<string> SoapAsync(string service, string action, List<(string, string)> args, double timeoutSeconds)
    {
        var svc = Device?.Service(service) ?? throw new Exception($"receiver has no {service}");
        var ordered = await OrderedArgsAsync(svc, action, args);
        var inner = string.Concat(ordered.Select(a => $"<{a.Item1}>{Xml.Escape(a.Item2)}</{a.Item1}>"));
        var body = $"<u:{action} xmlns:u=\"{svc.ServiceType}\">{inner}</u:{action}>";
        var resp = await PostAsync(svc.ControlUrl, $"{svc.ServiceType}#{action}", body, timeoutSeconds);
        return Xml.Inner(resp, action + "Response") ?? resp;
    }

    static async Task<string> PostAsync(Uri url, string soapAction, string body, double timeoutSeconds)
    {
        var envelope = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" " +
                       $"s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body>{body}</s:Body></s:Envelope>";
        using var req = new HttpRequestMessage(HttpMethod.Post, url);
        req.Content = new ByteArrayContent(Encoding.UTF8.GetBytes(envelope));
        req.Content.Headers.TryAddWithoutValidation("Content-Type", "text/xml; charset=\"utf-8\"");
        req.Headers.TryAddWithoutValidation("SOAPACTION", $"\"{soapAction}\"");
        req.Headers.ConnectionClose = true;
        using var cts = new CancellationTokenSource(TimeSpan.FromSeconds(timeoutSeconds));
        using var resp = await Http.SendAsync(req, cts.Token);
        var text = await resp.Content.ReadAsStringAsync(cts.Token);
        if (resp.StatusCode != HttpStatusCode.OK)
            throw new Exception($"HTTP {(int)resp.StatusCode} {Xml.Text(text, "errorDescription")}".Trim());
        return text;
    }

    /// <summary>Orders input arguments as the receiver's SCPD lists them (CyberLink emits them in that order).</summary>
    async Task<List<(string, string)>> OrderedArgsAsync(ServiceInfo svc, string action, List<(string, string)> args)
    {
        if (!_scpdCache.ContainsKey(svc.ServiceType) && svc.ScpdUrl != null)
        {
            var actions = new Dictionary<string, List<string>>();
            try
            {
                using var cts = new CancellationTokenSource(3000);
                var xml = await Http.GetStringAsync(svc.ScpdUrl, cts.Token);
                foreach (var a in Xml.All(xml, "action"))
                {
                    var name = Xml.Text(a, "name");
                    if (name == null) continue;
                    actions[name] = Xml.All(a, "argument")
                        .Where(arg => string.Equals(Xml.Text(arg, "direction"), "in", StringComparison.OrdinalIgnoreCase))
                        .Select(arg => Xml.Text(arg, "name")).Where(n => n != null).Select(n => n!).ToList();
                }
            }
            catch (Exception e)
            {
                Log.Error("SCPD " + svc.ScpdUrl, e);
            }
            _scpdCache[svc.ServiceType] = actions;
        }
        if (!_scpdCache.TryGetValue(svc.ServiceType, out var map) || !map.TryGetValue(action, out var order) || order.Count == 0)
            return args;
        var byName = args.GroupBy(a => a.Item1).ToDictionary(g => g.Key, g => g.First().Item2);
        return order.Where(byName.ContainsKey).Select(n => (n, byName[n])).Concat(args.Where(a => !order.Contains(a.Item1))).ToList();
    }
}

/// <summary>Minimal HTTP server for UPnP NOTIFY callbacks (answers 200 to everything).</summary>
sealed class EventServer
{
    TcpListener? _listener;

    public int? Start(Action<string> onNotify)
    {
        Stop();
        for (int port = 8060; port <= 8070; port++)
        {
            try
            {
                var l = new TcpListener(IPAddress.Any, port);
                l.Start();
                _listener = l;
                _ = Task.Run(() => Serve(l, onNotify));
                return port;
            }
            catch (SocketException) { }
        }
        return null;
    }

    public void Stop()
    {
        try { _listener?.Stop(); } catch { }
        _listener = null;
    }

    static async Task Serve(TcpListener l, Action<string> onNotify)
    {
        while (true)
        {
            TcpClient c;
            try { c = await l.AcceptTcpClientAsync(); } catch { return; }
            _ = Task.Run(async () =>
            {
                using (c)
                {
                    try
                    {
                        c.ReceiveTimeout = 2000;
                        var stream = c.GetStream();
                        var data = new List<byte>();
                        var buf = new byte[8192];
                        int expected = -1;
                        using var cts = new CancellationTokenSource(2000);
                        while (true)
                        {
                            int n = await stream.ReadAsync(buf, cts.Token);
                            if (n <= 0) break;
                            data.AddRange(buf.AsSpan(0, n).ToArray());
                            var text = Encoding.UTF8.GetString(data.ToArray());
                            int h = text.IndexOf("\r\n\r\n", StringComparison.Ordinal);
                            if (h < 0) continue;
                            if (expected < 0)
                            {
                                var len = text[..h].Split("\r\n").FirstOrDefault(x => x.StartsWith("content-length:", StringComparison.OrdinalIgnoreCase));
                                expected = h + 4 + (len != null && int.TryParse(len.Split(':')[1].Trim(), out var v) ? v : 0);
                            }
                            if (Encoding.UTF8.GetByteCount(text) >= expected) break;
                        }
                        var reply = Encoding.ASCII.GetBytes("HTTP/1.1 200 OK\r\nContent-Length: 0\r\nConnection: close\r\n\r\n");
                        await stream.WriteAsync(reply);
                        var all = Encoding.UTF8.GetString(data.ToArray());
                        int b = all.IndexOf("\r\n\r\n", StringComparison.Ordinal);
                        if (b >= 0) onNotify(all[(b + 4)..]);
                    }
                    catch { }
                }
            });
        }
    }
}
