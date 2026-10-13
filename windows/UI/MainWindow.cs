using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using AirSyncRemote.Media;
using AirSyncRemote.Protocol;
using Key = AirSyncRemote.Protocol.Key;
using WKey = System.Windows.Input.Key;

namespace AirSyncRemote.UI;

/// <summary>The app window: receiver choice, the TV picture and the remote panel.</summary>
sealed class MainWindow : Window
{
    readonly StbSession _session = new();
    readonly MirrorController _mirror = new();
    readonly Settings _settings = Settings.Current;
    List<StbDevice> _devices = new();
    bool _searching, _mirrorOn, _waitingForPicture, _locked, _muted;
    string _message = "";
    WriteableBitmap? _bitmap;
    FullScreenWindow? _fullScreen;
    readonly DispatcherTimer _volumeHide = new() { Interval = TimeSpan.FromSeconds(1.5) };
    bool _volumeVisible;
    DateTime _lastDiagnostics = DateTime.MinValue;

    // controls
    readonly ComboBox _deviceBox = new() { Width = 230, Margin = new Thickness(3), VerticalContentAlignment = VerticalAlignment.Center };
    readonly TextBox _ipBox = new() { Width = 120, Margin = new Thickness(3), VerticalContentAlignment = VerticalAlignment.Center };
    readonly Ellipse _statusDot = new() { Width = 10, Height = 10, Margin = new Thickness(8, 0, 6, 0) };
    readonly TextBlock _statusText = new() { VerticalAlignment = VerticalAlignment.Center, Foreground = Brushes.DimGray, TextTrimming = TextTrimming.CharacterEllipsis };
    readonly Button _muteButton, _lockButton, _fullButton, _mirrorButton, _disconnectButton;
    readonly Slider _volumeSlider = new() { Width = 90, Minimum = 0, Maximum = 1, VerticalAlignment = VerticalAlignment.Center, Margin = new Thickness(3, 0, 6, 0), Focusable = false };
    readonly PictureView _picture = new();
    readonly FrameworkElement _remotePanel;
    readonly Border _lockedBanner;
    readonly TextBox _typeBox = new() { Margin = new Thickness(3), VerticalContentAlignment = VerticalAlignment.Center };

    public MainWindow()
    {
        Title = "Air Sync Remote-Z";
        Width = 1180;
        Height = 680;
        MinWidth = 820;
        MinHeight = 520;
        WindowStartupLocation = WindowStartupLocation.CenterScreen;
        try { Icon = BitmapFrame.Create(new Uri("pack://application:,,,/Resources/AppIcon.ico")); } catch { }

        _muteButton = Ui.Button(Ui.Icon(Ui.GlyphVolume), ToggleMute, "Play the receiver's sound on this PC");
        _lockButton = Ui.Button(Ui.IconText(Ui.GlyphUnlock, "Lock"), ToggleLock,
            "Lock the controls so accidental clicks or typing don't change anything on the receiver (Ctrl+L)");
        _fullButton = Ui.Button(Ui.IconText(Ui.GlyphFullScreen, "Full Screen"), ToggleFullScreen,
            "Show the TV picture full screen (on your other display if you have one); this window keeps all the controls (F11)");
        _mirrorButton = Ui.Button(Ui.IconText(Ui.GlyphMirror, "Mirror", Brushes.White), () => _ = ToggleMirrorAsync(), "Show the TV here (Ctrl+Shift+R)");
        _mirrorButton.Background = Ui.Accent;
        _mirrorButton.BorderBrush = Ui.Accent;
        _disconnectButton = Ui.Button("Disconnect", () => _ = DisconnectAsync());
        _volumeSlider.Value = Math.Clamp(_settings.Volume, 0, 1);
        _volumeSlider.ToolTip = "Volume of the receiver's sound on this PC. While mirroring, the remote's volume and mute keys change this.";
        _volumeSlider.ValueChanged += (_, e) => SetVolume(e.NewValue, show: false);
        _mirror.Volume = (float)_volumeSlider.Value;
        _ipBox.Text = _settings.ManualIp;
        _ipBox.KeyDown += (_, e) => { if (e.Key == WKey.Enter) { _ = ConnectManualAsync(); e.Handled = true; } };
        // Picking a receiver from the list connects to it (programmatic selection in UpdateUi does not).
        _deviceBox.DropDownClosed += (_, _) =>
        {
            if (_deviceBox.SelectedItem is StbDevice d && d.Id != _session.Device?.Id) _ = ConnectAsync(d);
        };

        // top bar
        var left = new StackPanel { Orientation = Orientation.Horizontal };
        left.Children.Add(Ui.Icon(Ui.GlyphTv, 16));
        left.Children.Add(_deviceBox);
        left.Children.Add(Ui.Button(Ui.Icon(Ui.GlyphSearch), () => _ = SearchAsync(), "Search the network for receivers again"));
        left.Children.Add(new TextBlock { Text = "IP", VerticalAlignment = VerticalAlignment.Center, Margin = new Thickness(10, 0, 0, 0) });
        left.Children.Add(_ipBox);
        left.Children.Add(Ui.Button("Connect", () => _ = ConnectManualAsync(), "Connect to the receiver at this IP address"));
        left.Children.Add(_disconnectButton);
        left.Children.Add(_statusDot);
        var right = new StackPanel { Orientation = Orientation.Horizontal };
        right.Children.Add(_muteButton);
        right.Children.Add(_volumeSlider);
        right.Children.Add(_lockButton);
        right.Children.Add(_fullButton);
        right.Children.Add(_mirrorButton);
        var top = new DockPanel { Margin = new Thickness(8, 6, 8, 6), LastChildFill = true };
        DockPanel.SetDock(left, Dock.Left);
        DockPanel.SetDock(right, Dock.Right);
        top.Children.Add(left);
        top.Children.Add(right);
        top.Children.Add(_statusText);

        // remote panel
        _remotePanel = BuildRemotePanel();
        _lockedBanner = new Border
        {
            Background = Ui.Warning,
            CornerRadius = new CornerRadius(12),
            Padding = new Thickness(12, 5, 12, 5),
            Margin = new Thickness(0, 8, 0, 0),
            HorizontalAlignment = HorizontalAlignment.Center,
            VerticalAlignment = VerticalAlignment.Top,
            Child = Ui.IconText(Ui.GlyphLock, "Controls locked", Brushes.White),
            Visibility = Visibility.Collapsed,
        };
        var side = new Grid { Width = 300, Background = Ui.PanelBackground };
        side.Children.Add(new ScrollViewer { Content = _remotePanel, VerticalScrollBarVisibility = ScrollBarVisibility.Auto, Focusable = false });
        side.Children.Add(_lockedBanner);

        var root = new DockPanel();
        var topBorder = new Border { Child = top, BorderBrush = Ui.KeyBorder, BorderThickness = new Thickness(0, 0, 0, 1) };
        DockPanel.SetDock(topBorder, Dock.Top);
        DockPanel.SetDock(side, Dock.Right);
        root.Children.Add(topBorder);
        root.Children.Add(side);
        root.Children.Add(_picture);
        Content = root;

        _picture.Touch += OnTouch;
        _session.Changed += () => Dispatcher.BeginInvoke(UpdateUi);
        _volumeHide.Tick += (_, _) => { _volumeHide.Stop(); _volumeVisible = false; UpdateVolumeOverlay(); };
        PreviewKeyDown += (_, e) => HandleKeyDown(e);
        PreviewTextInput += (_, e) => HandleTextInput(e);
        CompositionTarget.Rendering += OnRender;
        Loaded += async (_, _) =>
        {
            _picture.Focus();
            UpdateUi();
            await SearchAsync();
        };
        Closing += OnClosing;
        UpdateUi();
    }

    // ---------------------------------------------------------------- remote panel

    FrameworkElement BuildRemotePanel()
    {
        var p = new StackPanel { Margin = new Thickness(12) };
        Button Round(string glyph, Key key, string tip, Brush? color = null) =>
            Ui.Button(Ui.Icon(glyph, 16, color), () => Press(key), tip, 48, 48);
        p.Children.Add(Ui.Row(Round(Ui.GlyphPower, Key.Power, "Standby", Ui.Danger), Round(Ui.GlyphMute, Key.Mute, "Mute"),
                              Round(Ui.GlyphHome, Key.Home, "Home"), Round(Ui.GlyphMenu, Key.Menu, "Menu")));

        var pad = new Grid { Width = 190, Height = 190, HorizontalAlignment = HorizontalAlignment.Center, Margin = new Thickness(0, 10, 0, 10) };
        for (int i = 0; i < 3; i++)
        {
            pad.RowDefinitions.Add(new RowDefinition());
            pad.ColumnDefinitions.Add(new ColumnDefinition());
        }
        void PadKey(UIElement e, int r, int c) { Grid.SetRow(e, r); Grid.SetColumn(e, c); pad.Children.Add(e); }
        PadKey(Ui.Button(Ui.Icon(Ui.GlyphUp), () => Press(Key.Up), "Up", 56, 56), 0, 1);
        PadKey(Ui.Button(Ui.Icon(Ui.GlyphLeft), () => Press(Key.Left), "Left", 56, 56), 1, 0);
        var ok = Ui.Button(new TextBlock { Text = "OK", FontWeight = FontWeights.SemiBold, Foreground = Brushes.White }, () => Press(Key.Ok), "OK (Enter)", 60, 60);
        ok.Background = Ui.Accent;
        PadKey(ok, 1, 1);
        PadKey(Ui.Button(Ui.Icon(Ui.GlyphRight), () => Press(Key.Right), "Right", 56, 56), 1, 2);
        PadKey(Ui.Button(Ui.Icon(Ui.GlyphDown), () => Press(Key.Down), "Down", 56, 56), 2, 1);
        p.Children.Add(pad);

        p.Children.Add(Ui.Row(Ui.Button(Ui.IconText(Ui.GlyphBack, "Back"), () => Press(Key.Back), "Back (Esc)", 112, 34),
                              Ui.Button(Ui.IconText(Ui.GlyphInfo, "Info"), () => Press(Key.Info), "Info", 112, 34)));

        FrameworkElement Rocker(string title, Key up, Key down)
        {
            var s = new StackPanel { Margin = new Thickness(12, 4, 12, 4) };
            s.Children.Add(Ui.Button("+", () => Press(up), title + " up", 56, 36));
            s.Children.Add(new TextBlock { Text = title, FontWeight = FontWeights.Bold, Foreground = Brushes.DimGray, HorizontalAlignment = HorizontalAlignment.Center });
            s.Children.Add(Ui.Button("−", () => Press(down), title + " down", 56, 36));
            return s;
        }
        p.Children.Add(Ui.Row(Rocker("VOL", Key.VolumeUp, Key.VolumeDown), Rocker("CH", Key.ChannelUp, Key.ChannelDown)));

        Button Color(Brush b, Key k, string tip)
        {
            var btn = Ui.Button(new Border { Width = 40, Height = 12, CornerRadius = new CornerRadius(6), Background = b }, () => Press(k), tip, 58, 28);
            return btn;
        }
        p.Children.Add(Ui.Row(Color(Brushes.Red, Key.Red, "Red (F1)"), Color(Brushes.Green, Key.Green, "Green (F2)"),
                              Color(Brushes.Gold, Key.Yellow, "Yellow (F3)"), Color(Brushes.RoyalBlue, Key.Blue, "Blue (F4)")));

        var numbers = new UniformGrid { Columns = 3, Width = 240, HorizontalAlignment = HorizontalAlignment.Center, Margin = new Thickness(0, 8, 0, 8) };
        for (int n = 1; n <= 9; n++)
        {
            int d = n;
            numbers.Children.Add(Ui.Button(n.ToString(), () => Press(Keys.Digit(d)), null, double.NaN, 36));
        }
        numbers.Children.Add(Ui.Button(Ui.Icon(Ui.GlyphBackspace), () => Press(Key.Delete), "Delete (Backspace)", double.NaN, 36));
        numbers.Children.Add(Ui.Button("0", () => Press(Keys.Digit(0)), null, double.NaN, 36));
        numbers.Children.Add(Ui.Button("OK", () => Press(Key.Ok), null, double.NaN, 36));
        p.Children.Add(numbers);

        p.Children.Add(Ui.Row(Round(Ui.GlyphPlayPause, Key.PlayPause, "Play / Pause"), Round(Ui.GlyphStop, Key.Stop, "Stop")));

        p.Children.Add(new TextBlock { Text = "Type on the TV", Foreground = Brushes.DimGray, Margin = new Thickness(3, 10, 0, 2) });
        var typeRow = new DockPanel();
        var send = Ui.Button("Send", SendTypedText);
        DockPanel.SetDock(send, Dock.Right);
        typeRow.Children.Add(send);
        typeRow.Children.Add(_typeBox);
        _typeBox.KeyDown += (_, e) => { if (e.Key == WKey.Enter) { SendTypedText(); e.Handled = true; } };
        p.Children.Add(typeRow);
        return p;
    }

    void SendTypedText()
    {
        if (_locked || _typeBox.Text.Length == 0) return;
        _session.Type(_typeBox.Text);
        _typeBox.Text = "";
    }

    // ---------------------------------------------------------------- session

    async Task SearchAsync()
    {
        if (_searching) return;
        _searching = true;
        _message = "Searching for receivers…";
        UpdateUi();
        var found = await Discovery.SearchAsync(4);
        _devices = found;
        _searching = false;
        _message = found.Count == 0 ? "No receiver found. Enter its IP address instead." : "";
        UpdateUi();
        if (_session.State is SessionState.Disconnected or SessionState.Failed)
        {
            var last = found.FirstOrDefault(d => d.Id == _settings.LastDevice);
            if (found.Count == 1) await ConnectAsync(found[0]);
            else if (last != null) await ConnectAsync(last);
        }
    }

    async Task ConnectAsync(StbDevice device)
    {
        await StopMirrorAsync();
        _message = "";
        await _session.ConnectAsync(device);
        if (_session.State == SessionState.Connected)
        {
            _settings.LastDevice = device.Id;
            _settings.Save();
        }
        UpdateUi();
    }

    async Task ConnectManualAsync()
    {
        var ip = _ipBox.Text.Trim();
        if (ip.Length == 0) return;
        _settings.ManualIp = ip;
        _settings.Save();
        await ConnectAsync(StbDevice.Manual(ip));
    }

    async Task DisconnectAsync()
    {
        await StopMirrorAsync();
        await _session.DisconnectAsync();
        UpdateUi();
    }

    async Task ToggleMirrorAsync()
    {
        if (_mirrorOn) await StopMirrorAsync();
        else await StartMirrorAsync();
    }

    async Task StartMirrorAsync()
    {
        if (_session.State != SessionState.Connected) return;
        try
        {
            _mirror.Start();
        }
        catch (Exception e)
        {
            Log.Error("start mirror receivers", e);
            _message = "Cannot receive the picture on UDP 8888/8890: " + e.Message;
            UpdateUi();
            return;
        }
        _mirror.Muted = _muted;
        _mirror.Volume = (float)_volumeSlider.Value;
        _mirrorOn = true;
        _waitingForPicture = true;
        UpdateUi();
        if (!await _session.StartMirrorAsync())
        {
            _mirror.Stop();
            _mirrorOn = false;
            _waitingForPicture = false;
        }
        UpdateUi();
    }

    async Task StopMirrorAsync()
    {
        if (!_mirrorOn) return;
        _mirrorOn = false;
        _waitingForPicture = false;
        UpdateUi();
        await _session.StopMirrorAsync();
        _mirror.Stop();
        UpdateUi();
    }

    void OnClosing(object? sender, CancelEventArgs e)
    {
        CompositionTarget.Rendering -= OnRender;
        _fullScreen?.CloseQuietly();
        _mirrorOn = false;
        _mirror.Stop();
        _session.ShutdownNow();
        Log.Write("closed");
    }

    // ---------------------------------------------------------------- keys, touch, volume, lock

    void Press(Key key)
    {
        if (_locked || _session.State != SessionState.Connected) return;
        if (_mirrorOn && AdjustPcSound(key)) return;
        _session.Press(key);
    }

    /// <summary>While mirroring, volume and mute change the sound on this PC (the receiver's own volume does not
    /// affect the mirrored sound). Returns false for other keys.</summary>
    bool AdjustPcSound(Key key)
    {
        switch (key)
        {
            case Key.VolumeUp:
                _muted = false;
                _volumeSlider.Value = Math.Min(1, Math.Round(_volumeSlider.Value * 10) / 10 + 0.1);
                break;
            case Key.VolumeDown:
                _muted = false;
                _volumeSlider.Value = Math.Max(0, Math.Round(_volumeSlider.Value * 10) / 10 - 0.1);
                break;
            case Key.Mute:
                _muted = !_muted;
                break;
            default:
                return false;
        }
        _mirror.Muted = _muted;
        _volumeVisible = true;
        _volumeHide.Stop();
        _volumeHide.Start();
        UpdateUi();
        return true;
    }

    void SetVolume(double v, bool show)
    {
        _mirror.Volume = (float)v;
        _settings.Volume = v;
        _settings.Save();
        if (show)
        {
            _volumeVisible = true;
            _volumeHide.Stop();
            _volumeHide.Start();
        }
        UpdateVolumeOverlay();
    }

    void ToggleMute()
    {
        _muted = !_muted;
        _mirror.Muted = _muted;
        UpdateUi();
    }

    void ToggleLock()
    {
        _locked = !_locked;
        _fullScreen?.ShowControls();
        UpdateUi();
    }

    void OnTouch(Point p, bool pressed)
    {
        if (_locked || _session.State != SessionState.Connected) return;
        _session.Touch((int)Math.Round(p.X * 1279), (int)Math.Round(p.Y * 719), pressed);
    }

    static bool InTextBox() => Keyboard.FocusedElement is TextBox;

    /// <summary>Keyboard → remote (also called by the full-screen window).</summary>
    public void HandleKeyDown(KeyEventArgs e)
    {
        var mods = Keyboard.Modifiers;
        var key = e.Key == WKey.System ? e.SystemKey : e.Key;
        // App shortcuts work everywhere.
        if (key == WKey.L && mods == ModifierKeys.Control) { ToggleLock(); e.Handled = true; return; }
        if (key == WKey.F11) { ToggleFullScreen(); e.Handled = true; return; }
        if (InTextBox()) return;
        if (mods.HasFlag(ModifierKeys.Control))
        {
            bool shift = mods.HasFlag(ModifierKeys.Shift);
            Key? k = key switch
            {
                WKey.Up => shift ? Key.ChannelUp : Key.VolumeUp,
                WKey.Down => shift ? Key.ChannelDown : Key.VolumeDown,
                WKey.H when shift => Key.Home,
                WKey.M when shift => Key.Menu,
                WKey.I when shift => Key.Info,
                WKey.D0 when shift => Key.Mute,
                WKey.OemOpenBrackets => Key.Back,
                _ => null,
            };
            if (k is { } kk) { Press(kk); e.Handled = true; }
            else if (key == WKey.R && shift) { _ = ToggleMirrorAsync(); e.Handled = true; }
            return;
        }
        if (mods.HasFlag(ModifierKeys.Alt)) return;
        Key? remote = key switch
        {
            WKey.Left => Key.Left,
            WKey.Right => Key.Right,
            WKey.Up => Key.Up,
            WKey.Down => Key.Down,
            WKey.Enter => Key.Ok,
            WKey.Escape => Key.Back,
            WKey.Back or WKey.Delete => Key.Delete,
            WKey.Home => Key.Home,
            WKey.PageUp => Key.ChannelUp,
            WKey.PageDown => Key.ChannelDown,
            WKey.F1 => Key.Red,
            WKey.F2 => Key.Green,
            WKey.F3 => Key.Yellow,
            WKey.F4 => Key.Blue,
            WKey.Space => Key.Space,
            _ => null,
        };
        if (remote is { } r)
        {
            if (_locked) _fullScreen?.ShowControls(); // show why nothing happens
            else Press(r);
            e.Handled = true;
        }
    }

    /// <summary>Typed characters go to the receiver (handy for search boxes).</summary>
    public void HandleTextInput(TextCompositionEventArgs e)
    {
        if (InTextBox() || string.IsNullOrEmpty(e.Text) || e.Text[0] < ' ') return;
        if (Keyboard.Modifiers.HasFlag(ModifierKeys.Control) || Keyboard.Modifiers.HasFlag(ModifierKeys.Alt)) return;
        e.Handled = true;
        if (_locked)
        {
            _fullScreen?.ShowControls();
            return;
        }
        if (_session.State == SessionState.Connected) _session.Type(e.Text);
    }

    // ---------------------------------------------------------------- full screen

    void ToggleFullScreen()
    {
        if (_fullScreen != null)
        {
            _fullScreen.Close();
            return;
        }
        var target = Monitors.PickForFullScreen(new WindowInteropHelper(this).Handle);
        var fs = new FullScreenWindow(this, target);
        fs.Picture.Source = _bitmap;
        fs.Picture.Touch += OnTouch;
        fs.Closed += (_, _) =>
        {
            _fullScreen = null;
            Activate();
            _picture.Focus();
            UpdateUi();
        };
        _fullScreen = fs;
        fs.Show();
        fs.Activate();
        UpdateUi();
    }

    public bool ControlsLocked => _locked;
    public void ToggleLockFromFullScreen() => ToggleLock();
    public void ExitFullScreen() => _fullScreen?.Close();

    // ---------------------------------------------------------------- picture

    void OnRender(object? sender, EventArgs e)
    {
        if (!_mirrorOn) return;
        var frame = _mirror.TakeFrameForNow();
        if (frame != null)
        {
            try
            {
                if (_bitmap == null || _bitmap.PixelWidth != frame.Width || _bitmap.PixelHeight != frame.Height)
                {
                    _bitmap = new WriteableBitmap(frame.Width, frame.Height, 96, 96, PixelFormats.Bgr32, null);
                    _picture.Source = _bitmap;
                    if (_fullScreen != null) _fullScreen.Picture.Source = _bitmap;
                }
                _bitmap.WritePixels(new Int32Rect(0, 0, frame.Width, frame.Height), frame.Pixels, frame.Width * 4, 0);
            }
            finally
            {
                frame.Release();
            }
            if (_waitingForPicture)
            {
                _waitingForPicture = false;
                UpdateUi();
            }
        }
        if (DateTime.UtcNow - _lastDiagnostics > TimeSpan.FromSeconds(10))
        {
            _lastDiagnostics = DateTime.UtcNow;
            Log.Write(_mirror.Diagnostics());
        }
    }

    // ---------------------------------------------------------------- UI state

    void UpdateUi()
    {
        var state = _session.State;
        bool connected = state == SessionState.Connected;

        // devices
        if (!_deviceBox.IsDropDownOpen)
        {
            var items = _devices.ToList();
            if (_session.Device != null && items.All(d => d.Id != _session.Device.Id)) items.Insert(0, _session.Device);
            if (!_deviceBox.Items.Cast<StbDevice>().SequenceEqual(items))
            {
                _deviceBox.Items.Clear();
                foreach (var d in items) _deviceBox.Items.Add(d);
            }
            _deviceBox.SelectedItem = items.FirstOrDefault(d => d.Id == _session.Device?.Id);
        }
        _disconnectButton.Visibility = connected ? Visibility.Visible : Visibility.Collapsed;

        _statusDot.Fill = state switch
        {
            SessionState.Connected => Brushes.LimeGreen,
            SessionState.Connecting => Brushes.Gold,
            SessionState.Failed => Brushes.Red,
            _ => Brushes.Gray,
        };
        _statusText.Text = _message.Length > 0 ? _message :
            state == SessionState.Disconnected ? (_searching ? "Searching…" : "Not connected") : _session.Status;

        _muteButton.Content = Ui.Icon(_muted ? Ui.GlyphMute : Ui.GlyphVolume);
        _volumeSlider.IsEnabled = !_muted;
        _lockButton.Content = Ui.IconText(_locked ? Ui.GlyphLock : Ui.GlyphUnlock, _locked ? "Locked" : "Lock", _locked ? Brushes.White : null);
        _lockButton.Background = _locked ? Ui.Warning : Ui.KeyBackground;
        _fullButton.Content = Ui.IconText(_fullScreen != null ? Ui.GlyphBackToWindow : Ui.GlyphFullScreen,
                                          _fullScreen != null ? "Exit Full Screen" : "Full Screen");
        _mirrorButton.Content = Ui.IconText(_mirrorOn ? Ui.GlyphStopMirror : Ui.GlyphMirror, _mirrorOn ? "Stop Mirror" : "Mirror", Brushes.White);
        _mirrorButton.Background = _mirrorOn ? Ui.Danger : Ui.Accent;
        _mirrorButton.BorderBrush = _mirrorButton.Background;
        _mirrorButton.IsEnabled = connected;

        _remotePanel.IsEnabled = connected && !_locked;
        _remotePanel.Opacity = _remotePanel.IsEnabled ? 1 : 0.55;
        _lockedBanner.Visibility = _locked ? Visibility.Visible : Visibility.Collapsed;

        // picture
        string? title = null, text = "";
        if (!_mirrorOn || _waitingForPicture)
        {
            title = _waitingForPicture ? "Waiting for the receiver's picture…" :
                    connected ? "Press Mirror to see the TV here" : "Connect to a receiver";
            text = "Click here, then use your keyboard: arrows, Enter = OK, Esc = Back; typing goes to the receiver.";
        }
        if (_fullScreen != null)
        {
            var exit = Ui.Button("Exit Full Screen", ToggleFullScreen);
            _picture.SetPlaceholder("The TV picture is shown full screen",
                "Switch to it with Alt+Tab (or look at your other display). The controls here keep working.", exit);
            _fullScreen.Picture.SetPlaceholder(title, text);
        }
        else
        {
            _picture.SetPlaceholder(title, text);
        }
        _fullScreen?.UpdateLock(_locked);
        UpdateVolumeOverlay();
    }

    void UpdateVolumeOverlay()
    {
        var target = _fullScreen?.Picture ?? _picture;
        (target == _picture ? null : _picture)?.ShowVolume(false, _muted, _volumeSlider.Value);
        target.ShowVolume(_volumeVisible, _muted, _volumeSlider.Value);
    }
}
