using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace AirSyncRemote.UI;

/// <summary>Small helpers for building the interface in code.</summary>
static class Ui
{
    /// <summary>Windows' icon fonts (Segoe Fluent Icons on Windows 11, Segoe MDL2 Assets on Windows 10).</summary>
    public static readonly FontFamily IconFont = new("Segoe Fluent Icons, Segoe MDL2 Assets");

    public static readonly Brush PanelBackground = new SolidColorBrush(Color.FromRgb(0xF3, 0xF3, 0xF3));
    public static readonly Brush KeyBackground = Brushes.White;
    public static readonly Brush KeyBorder = new SolidColorBrush(Color.FromRgb(0xCC, 0xCC, 0xCC));
    public static readonly Brush Accent = new SolidColorBrush(Color.FromRgb(0x00, 0x67, 0xC0));
    public static readonly Brush Danger = new SolidColorBrush(Color.FromRgb(0xC4, 0x2B, 0x1C));
    public static readonly Brush Warning = new SolidColorBrush(Color.FromRgb(0xE8, 0x7A, 0x00));

    /// <summary>A button that never takes keyboard focus, so the keyboard keeps controlling the TV.</summary>
    public static Button Button(object content, Action click, string? tip = null, double width = double.NaN, double height = 32)
    {
        var b = new Button
        {
            Content = content,
            Focusable = false,
            Width = width,
            Height = height,
            Padding = new Thickness(10, 2, 10, 2),
            Margin = new Thickness(3),
            Background = KeyBackground,
            BorderBrush = KeyBorder,
            ToolTip = tip,
        };
        b.Click += (_, _) => click();
        return b;
    }

    public static TextBlock Icon(string glyph, double size = 16, Brush? color = null) => new()
    {
        Text = glyph,
        FontFamily = IconFont,
        FontSize = size,
        Foreground = color ?? Brushes.Black,
        HorizontalAlignment = HorizontalAlignment.Center,
        VerticalAlignment = VerticalAlignment.Center,
    };

    /// <summary>Icon followed by a label.</summary>
    public static StackPanel IconText(string glyph, string text, Brush? color = null)
    {
        var p = new StackPanel { Orientation = Orientation.Horizontal };
        p.Children.Add(Icon(glyph, 14, color));
        p.Children.Add(new TextBlock { Text = text, Margin = new Thickness(6, 0, 0, 0), VerticalAlignment = VerticalAlignment.Center, Foreground = color ?? Brushes.Black });
        return p;
    }

    public static StackPanel Row(params UIElement[] items)
    {
        var p = new StackPanel { Orientation = Orientation.Horizontal, HorizontalAlignment = HorizontalAlignment.Center, Margin = new Thickness(0, 4, 0, 4) };
        foreach (var i in items) p.Children.Add(i);
        return p;
    }

    // Segoe icon glyphs
    public const string GlyphPower = "", GlyphMute = "", GlyphVolume = "", GlyphHome = "",
        GlyphMenu = "", GlyphUp = "", GlyphDown = "", GlyphLeft = "", GlyphRight = "",
        GlyphBack = "", GlyphInfo = "", GlyphPlayPause = "", GlyphStop = "", GlyphBackspace = "",
        GlyphLock = "", GlyphUnlock = "", GlyphFullScreen = "", GlyphBackToWindow = "",
        GlyphTv = "", GlyphMirror = "", GlyphStopMirror = "", GlyphSearch = "";
}

/// <summary>Monitor rectangles in physical pixels (for placing the full-screen picture).</summary>
static class Monitors
{
    [StructLayout(LayoutKind.Sequential)]
    public struct Rect { public int Left, Top, Right, Bottom; public int Width => Right - Left; public int Height => Bottom - Top; }

    [StructLayout(LayoutKind.Sequential)]
    struct MonitorInfo { public int Size; public Rect Monitor, Work; public uint Flags; }

    delegate bool EnumProc(IntPtr monitor, IntPtr hdc, IntPtr rect, IntPtr data);
    [DllImport("user32.dll")] static extern bool EnumDisplayMonitors(IntPtr hdc, IntPtr clip, EnumProc proc, IntPtr data);
    [DllImport("user32.dll")] static extern bool GetMonitorInfo(IntPtr monitor, ref MonitorInfo info);
    [DllImport("user32.dll")] static extern IntPtr MonitorFromWindow(IntPtr hwnd, uint flags);
    [DllImport("user32.dll")] public static extern bool SetWindowPos(IntPtr hwnd, IntPtr after, int x, int y, int w, int h, uint flags);

    static Rect Bounds(IntPtr monitor)
    {
        var mi = new MonitorInfo { Size = Marshal.SizeOf<MonitorInfo>() };
        GetMonitorInfo(monitor, ref mi);
        return mi.Monitor;
    }

    /// <summary>A monitor other than the window's, if there is one; otherwise the window's own monitor.</summary>
    public static Rect PickForFullScreen(IntPtr mainWindow)
    {
        var own = MonitorFromWindow(mainWindow, 2 /* MONITOR_DEFAULTTONEAREST */);
        var all = new List<IntPtr>();
        EnumDisplayMonitors(IntPtr.Zero, IntPtr.Zero, (m, _, _, _) => { all.Add(m); return true; }, IntPtr.Zero);
        var other = all.FirstOrDefault(m => m != own);
        return Bounds(other != IntPtr.Zero ? other : own);
    }
}
