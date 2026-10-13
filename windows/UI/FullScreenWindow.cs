using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Threading;

namespace AirSyncRemote.UI;

/// <summary>
/// The TV picture alone, covering a whole monitor (the other one if there are two). The app window stays open
/// with all its controls. Moving the mouse shows the Lock and Exit Full Screen buttons for a moment.
/// </summary>
sealed class FullScreenWindow : Window
{
    readonly MainWindow _owner;
    readonly Monitors.Rect _bounds;
    readonly StackPanel _controls = new()
    {
        Orientation = Orientation.Horizontal,
        HorizontalAlignment = HorizontalAlignment.Right,
        VerticalAlignment = VerticalAlignment.Top,
        Margin = new Thickness(24),
        Visibility = Visibility.Collapsed,
    };
    readonly Button _lock;
    readonly DispatcherTimer _hide = new() { Interval = TimeSpan.FromSeconds(2.5) };
    bool _closingQuietly;

    public PictureView Picture { get; } = new();

    public FullScreenWindow(MainWindow owner, Monitors.Rect bounds)
    {
        _owner = owner;
        _bounds = bounds;
        Title = "Air Sync Remote-Z — TV";
        Icon = owner.Icon;
        WindowStyle = WindowStyle.None;
        ResizeMode = ResizeMode.NoResize;
        Background = Brushes.Black;
        ShowInTaskbar = true;
        Content = Picture;

        _lock = Ui.Button(Ui.IconText(Ui.GlyphUnlock, "Lock"), () => _owner.ToggleLockFromFullScreen(), "Lock the controls (Ctrl+L)", double.NaN, 40);
        var exit = Ui.Button(Ui.IconText(Ui.GlyphBackToWindow, "Exit Full Screen", Brushes.White), Close, "Back to the window (F11)", double.NaN, 40);
        exit.Background = new SolidColorBrush(Color.FromArgb(0xB0, 0x20, 0x20, 0x20));
        exit.BorderBrush = exit.Background;
        _controls.Children.Add(_lock);
        _controls.Children.Add(exit);
        Picture.Overlay.Add(_controls);
        UpdateLock(owner.ControlsLocked);

        Picture.MouseMoved += ShowControls;
        _controls.MouseEnter += (_, _) => _hide.Stop();
        _controls.MouseLeave += (_, _) => { _hide.Stop(); _hide.Start(); };
        _hide.Tick += (_, _) =>
        {
            _hide.Stop();
            if (_controls.IsMouseOver) return;
            _controls.Visibility = Visibility.Collapsed;
            Cursor = Cursors.None;
        };
        PreviewKeyDown += (_, e) => _owner.HandleKeyDown(e);
        PreviewTextInput += (_, e) => _owner.HandleTextInput(e);
        SourceInitialized += (_, _) =>
        {
            // Cover the chosen monitor exactly (physical pixels, independent of its scaling).
            var hwnd = new WindowInteropHelper(this).Handle;
            Monitors.SetWindowPos(hwnd, IntPtr.Zero, _bounds.Left, _bounds.Top, _bounds.Width, _bounds.Height, 0x0040 /* SWP_SHOWWINDOW */);
        };
        Loaded += (_, _) =>
        {
            Picture.Focus();
            ShowControls();
        };
    }

    public void ShowControls()
    {
        Cursor = null;
        _controls.Visibility = Visibility.Visible;
        _hide.Stop();
        _hide.Start();
    }

    public void UpdateLock(bool locked)
    {
        _lock.Content = Ui.IconText(locked ? Ui.GlyphLock : Ui.GlyphUnlock, locked ? "Locked" : "Lock", locked ? Brushes.White : null);
        _lock.Background = locked ? Ui.Warning : Ui.KeyBackground;
    }

    /// <summary>Closes without bringing the app window forward (used when the app quits).</summary>
    public void CloseQuietly()
    {
        _closingQuietly = true;
        Close();
    }

    public bool ClosingQuietly => _closingQuietly;
}
