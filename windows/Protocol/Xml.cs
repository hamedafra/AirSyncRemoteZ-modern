using System.Net;
using System.Text.RegularExpressions;

namespace AirSyncRemote.Protocol;

/// <summary>
/// Tolerant helpers for the small UPnP/SOAP documents the receiver returns. Element names are matched without
/// namespace prefix and case-insensitively; the receiver's XML is not always well-formed, so no strict parser.
/// </summary>
static class Xml
{
    static Regex ElementRegex(string name) =>
        new($@"<(?:[\w.-]+:)?{Regex.Escape(name)}(?:\s[^>]*)?(?:/>|>(.*?)</(?:[\w.-]+:)?{Regex.Escape(name)}\s*>)",
            RegexOptions.Singleline | RegexOptions.IgnoreCase);

    /// <summary>Inner XML of the first element with this name, or null.</summary>
    public static string? Inner(string xml, string name)
    {
        var m = ElementRegex(name).Match(xml);
        return m.Success ? m.Groups[1].Value : null;
    }

    /// <summary>Trimmed, entity-decoded text of the first element with this name, or null.</summary>
    public static string? Text(string xml, string name)
    {
        var inner = Inner(xml, name);
        return inner == null ? null : WebUtility.HtmlDecode(inner).Trim();
    }

    /// <summary>Inner XML of every element with this name.</summary>
    public static List<string> All(string xml, string name) =>
        ElementRegex(name).Matches(xml).Select(m => m.Groups[1].Value).ToList();

    public static string Escape(string s) =>
        s.Replace("&", "&amp;").Replace("<", "&lt;").Replace(">", "&gt;").Replace("\"", "&quot;");
}
