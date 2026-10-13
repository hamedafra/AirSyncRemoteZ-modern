using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace AirSyncRemote.UI;

/// <summary>
/// The TV picture with its overlays (placeholder text, volume bar). Used in the app window and in the
/// full-screen window; both show the same bitmap. Clicks and drags on the picture become touches on the TV.
/// </summary>
sealed class PictureView : Grid
{
    readonly Image _image = new() { Stretch = Stretch.Uniform };
    readonly StackPanel _placeholder = new() { VerticalAlignment = VerticalAlignment.Center, HorizontalAlignment = HorizontalAlignment.Center };
    readonly TextBlock _placeholderTitle = new() { FontSize = 20, Foreground = Brushes.White, HorizontalAlignment = HorizontalAlignment.Center, TextAlignment = TextAlignment.Center };
    readonly TextBlock _placeholderText = new() { FontSize = 13, Foreground = new SolidColorBrush(Color.FromArgb(0xC0, 0xFF, 0xFF, 0xFF)), TextWrapping = TextWrapping.Wrap, MaxWidth = 420, TextAlignment = TextAlignment.Center, Margin = new Thickness(0, 8, 0, 0) };
    readonly ContentControl _placeholderExtra = new() { HorizontalAlignment = HorizontalAlignment.Center, Margin = new Thickness(0, 12, 0, 0) };
    readonly Border _volume;
    readonly TextBlock _volumeIcon = Ui.Icon(Ui.GlyphVolume, 22, Brushes.White);
    readonly ProgressBar _volumeBar = new() { Width = 220, Height = 8, Minimum = 0, Maximum = 1, Margin = new Thickness(12, 0, 12, 0) };
    readonly TextBlock _volumeText = new() { Foreground = Brushes.White, FontSize = 18, Width = 60, TextAlignment = TextAlignment.Right };
    readonly Grid _overlayLayer = new();
    int _moveCount;

    /// <summary>Touch at a normalized point (0…1, origin top-left of the picture); pressed = finger down.</summary>
    public event Action<Point, bool>? Touch;
    public event Action? MouseMoved;

    public PictureView()
    {
        Background = Brushes.Black;
        Focusable = true;
        FocusVisualStyle = null;
        Children.Add(_image);
        _placeholder.Children.Add(Ui.Icon(Ui.GlyphTv, 48, new SolidColorBrush(Color.FromArgb(0xC0, 0xFF, 0xFF, 0xFF))));
        _placeholder.Children.Add(_placeholderTitle);
        _placeholder.Children.Add(_placeholderText);
        _placeholder.Children.Add(_placeholderExtra);
        _placeholderTitle.Margin = new Thickness(0, 10, 0, 0);
        Children.Add(_placeholder);

        var volRow = new StackPanel { Orientation = Orientation.Horizontal };
        volRow.Children.Add(_volumeIcon);
        volRow.Children.Add(_volumeBar);
        volRow.Children.Add(_volumeText);
        _volumeBar.VerticalAlignment = VerticalAlignment.Center;
        _volume = new Border
        {
            Child = volRow,
            Background = new SolidColorBrush(Color.FromArgb(0xC0, 0, 0, 0)),
            CornerRadius = new CornerRadius(10),
            Padding = new Thickness(18, 10, 18, 10),
            HorizontalAlignment = HorizontalAlignment.Center,
            VerticalAlignment = VerticalAlignment.Top,
            Margin = new Thickness(0, 28, 0, 0),
            Visibility = Visibility.Collapsed,
            IsHitTestVisible = false,
        };
        Children.Add(_volume);
        Children.Add(_overlayLayer);

        _image.MouseLeftButtonDown += (_, e) =>
        {
            Focus();
            _image.CaptureMouse();
            _moveCount = 0;
            if (Normalized(e) is { } p) Touch?.Invoke(p, true);
            e.Handled = true;
        };
        _image.MouseMove += (_, e) =>
        {
            if (!_image.IsMouseCaptured) return;
            if (++_moveCount % 2 != 0) return; // the app sends every 2nd move
            if (Normalized(e) is { } p) Touch?.Invoke(p, true);
        };
        _image.MouseLeftButtonUp += (_, e) =>
        {
            if (!_image.IsMouseCaptured) return;
            _image.ReleaseMouseCapture();
            if (Normalized(e) is { } p) Touch?.Invoke(p, false);
        };
        MouseDown += (_, _) => Focus();
        MouseMove += (_, _) => MouseMoved?.Invoke();
    }

    /// <summary>Extra content drawn over the picture (the full-screen buttons).</summary>
    public UIElementCollection Overlay => _overlayLayer.Children;

    Point? Normalized(MouseEventArgs e)
    {
        var p = e.GetPosition(_image);
        double w = _image.ActualWidth, h = _image.ActualHeight;
        if (w < 2 || h < 2) return null;
        return new Point(Math.Clamp(p.X / w, 0, 1), Math.Clamp(p.Y / h, 0, 1));
    }

    public ImageSource? Source
    {
        get => _image.Source;
        set => _image.Source = value;
    }

    /// <summary>Shows a message instead of the picture (null hides it and shows the picture).</summary>
    public void SetPlaceholder(string? title, string text = "", UIElement? extra = null)
    {
        _placeholder.Visibility = title == null ? Visibility.Collapsed : Visibility.Visible;
        _image.Visibility = title == null ? Visibility.Visible : Visibility.Hidden;
        _placeholderTitle.Text = title ?? "";
        _placeholderText.Text = text;
        _placeholderText.Visibility = text.Length > 0 ? Visibility.Visible : Visibility.Collapsed;
        _placeholderExtra.Content = extra;
    }

    public void ShowVolume(bool visible, bool muted, double volume)
    {
        _volume.Visibility = visible ? Visibility.Visible : Visibility.Collapsed;
        _volumeIcon.Text = muted ? Ui.GlyphMute : Ui.GlyphVolume;
        _volumeBar.Value = muted ? 0 : volume;
        _volumeText.Text = muted ? "Muted" : $"{Math.Round(volume * 100)}";
    }
}
