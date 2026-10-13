using System.Net.Http;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Text;

namespace AirSyncRemote.Protocol;

sealed record ServiceInfo(string ServiceType, Uri ControlUrl, Uri? EventSubUrl, Uri? ScpdUrl);

sealed record StbDevice(string Id, string Name, string Ip, Dictionary<string, ServiceInfo> Services)
{
    public ServiceInfo? Service(string name) => Services.TryGetValue(name, out var s) ? s : null;

    public override string ToString() => $"{Name}  ({Ip})";

    /// <summary>Device reached by IP without discovery: uses the receiver's well-known UPnP paths.</summary>
    public static StbDevice Manual(string ip, int port = 49152)
    {
        var services = new Dictionary<string, ServiceInfo>();
        foreach (var name in new[] { "AccessControlServer", "MirrorControlServer", "VinputControlServer", "GsensorControlServer", "VIMEControlServer" })
        {
            var b = $"http://{ip}:{port}/upnp/service/{name}";
            services[name] = new ServiceInfo($"urn:schemas-upnp-org:service:{name}:1", new Uri(b + "/Control"), new Uri(b + "/Event"), null);
        }
        return new StbDevice("manual-" + ip, ip, ip, services);
    }
}

/// <summary>SSDP discovery of HiSilicon MultiScreen servers (what the Android app does with CyberLink UPnP).</summary>
static class Discovery
{
    public const string DeviceType = "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1";
    static readonly HttpClient Http = new() { Timeout = TimeSpan.FromSeconds(4) };

    public static async Task<List<StbDevice>> SearchAsync(double timeoutSeconds = 4)
    {
        var locations = await Task.Run(() => SsdpSearch(timeoutSeconds));
        var found = await Task.WhenAll(locations.Select(FetchDescriptionAsync));
        return found.Where(d => d != null).Select(d => d!).GroupBy(d => d.Id).Select(g => g.First())
                    .OrderBy(d => d.Name).ToList();
    }

    /// <summary>Sends M-SEARCH to the multicast group and the subnet broadcasts, returns LOCATION URLs.</summary>
    static HashSet<Uri> SsdpSearch(double timeoutSeconds)
    {
        var found = new HashSet<Uri>();
        using var s = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
        s.EnableBroadcast = true;
        s.Bind(new IPEndPoint(IPAddress.Any, 0));
        s.ReceiveTimeout = 250;
        var msg = Encoding.ASCII.GetBytes(
            $"M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nMAN: \"ssdp:discover\"\r\nMX: 3\r\nST: {DeviceType}\r\n\r\n");
        var targets = new List<IPAddress> { IPAddress.Parse("239.255.255.250"), IPAddress.Broadcast };
        targets.AddRange(NetworkInfo.BroadcastAddresses());
        var buf = new byte[4096];
        var deadline = DateTime.UtcNow.AddSeconds(timeoutSeconds);
        var nextSend = DateTime.UtcNow;
        while (DateTime.UtcNow < deadline)
        {
            if (DateTime.UtcNow >= nextSend)
            {
                foreach (var t in targets)
                {
                    try { s.SendTo(msg, new IPEndPoint(t, 1900)); } catch { }
                }
                nextSend = DateTime.UtcNow.AddSeconds(1);
            }
            int n;
            try { n = s.Receive(buf); } catch (SocketException) { continue; }
            var headers = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
            foreach (var line in Encoding.UTF8.GetString(buf, 0, n).Split("\r\n"))
            {
                var c = line.IndexOf(':');
                if (c > 0) headers[line[..c].Trim()] = line[(c + 1)..].Trim();
            }
            var st = headers.GetValueOrDefault("ST") ?? headers.GetValueOrDefault("NT") ?? "";
            var usn = headers.GetValueOrDefault("USN") ?? "";
            if ((st.StartsWith(DeviceType) || usn.EndsWith(DeviceType)) &&
                Uri.TryCreate(headers.GetValueOrDefault("LOCATION"), UriKind.Absolute, out var loc))
                found.Add(loc);
        }
        Log.Write($"SSDP: {found.Count} location(s): {string.Join(", ", found)}");
        return found;
    }

    static async Task<StbDevice?> FetchDescriptionAsync(Uri location)
    {
        try
        {
            var xml = await Http.GetStringAsync(location);
            var device = Xml.All(xml, "device").FirstOrDefault(d => Xml.Text(d, "deviceType") == DeviceType);
            if (device == null) return null;
            var baseUri = Uri.TryCreate(Xml.Text(xml, "URLBase"), UriKind.Absolute, out var b) ? b : location;
            Uri? Rel(string? s) => string.IsNullOrEmpty(s) ? null : Uri.TryCreate(baseUri, s, out var u) ? u : null;
            var services = new Dictionary<string, ServiceInfo>();
            foreach (var s in Xml.All(device, "service"))
            {
                var type = Xml.Text(s, "serviceType");
                var ctl = Rel(Xml.Text(s, "controlURL"));
                if (type == null || ctl == null) continue;
                var parts = type.Split(':');
                var shortName = parts.Length >= 2 ? parts[^2] : type;
                services[shortName] = new ServiceInfo(type, ctl, Rel(Xml.Text(s, "eventSubURL")), Rel(Xml.Text(s, "SCPDURL")));
            }
            if (!services.ContainsKey("AccessControlServer")) return null;
            var name = Xml.Text(device, "friendlyName") ?? location.Host;
            var udn = Xml.Text(device, "UDN") ?? location.Host;
            return new StbDevice(udn, name, location.Host, services);
        }
        catch (Exception e)
        {
            Log.Error($"device description {location}", e);
            return null;
        }
    }
}

static class NetworkInfo
{
    /// <summary>Subnet broadcast addresses of active IPv4 interfaces.</summary>
    public static IEnumerable<IPAddress> BroadcastAddresses()
    {
        var list = new List<IPAddress>();
        try
        {
            foreach (var ni in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (ni.OperationalStatus != OperationalStatus.Up || ni.NetworkInterfaceType == NetworkInterfaceType.Loopback) continue;
                foreach (var ua in ni.GetIPProperties().UnicastAddresses)
                {
                    if (ua.Address.AddressFamily != AddressFamily.InterNetwork || ua.IPv4Mask == null) continue;
                    var ip = ua.Address.GetAddressBytes();
                    var mask = ua.IPv4Mask.GetAddressBytes();
                    var bc = new byte[4];
                    for (int i = 0; i < 4; i++) bc[i] = (byte)(ip[i] | ~mask[i]);
                    list.Add(new IPAddress(bc));
                }
            }
        }
        catch (Exception e)
        {
            Log.Error("interfaces", e);
        }
        return list;
    }

    /// <summary>The local IPv4 address Windows would use to reach <paramref name="ip"/>.</summary>
    public static string? LocalAddressToward(string ip)
    {
        try
        {
            using var s = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            s.Connect(IPAddress.Parse(ip), 9);
            return (s.LocalEndPoint as IPEndPoint)?.Address.ToString();
        }
        catch
        {
            return null;
        }
    }
}
