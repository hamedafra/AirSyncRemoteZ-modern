using System.IO;
using System.Text.Json;

namespace AirSyncRemote;

/// <summary>
/// Writes a log to %LOCALAPPDATA%\Air Sync Remote-Z\log.txt (started fresh at every launch), so problems on a
/// PC can be diagnosed from the file.
/// </summary>
static class Log
{
    static readonly object Gate = new();
    static StreamWriter? _writer;

    public static string Folder { get; } =
        Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Air Sync Remote-Z");

    public static string FilePath => Path.Combine(Folder, "log.txt");

    public static void Start()
    {
        try
        {
            Directory.CreateDirectory(Folder);
            _writer = new StreamWriter(FilePath, append: false) { AutoFlush = true };
            Write($"Air Sync Remote-Z {typeof(Log).Assembly.GetName().Version} on {Environment.OSVersion} " +
                  $"({System.Runtime.InteropServices.RuntimeInformation.ProcessArchitecture})");
        }
        catch
        {
            _writer = null;
        }
    }

    public static void Write(string message)
    {
        lock (Gate)
        {
            try { _writer?.WriteLine($"{DateTime.Now:HH:mm:ss.fff} {message}"); } catch { }
        }
        System.Diagnostics.Debug.WriteLine(message);
    }

    public static void Error(string what, Exception e) => Write($"ERROR {what}: {e.GetType().Name}: {e.Message}");
}

/// <summary>Small persistent settings in %APPDATA%\Air Sync Remote-Z\settings.json.</summary>
sealed class Settings
{
    public string? RemoteId { get; set; }
    public string? LastDevice { get; set; }
    public string ManualIp { get; set; } = "";
    public double Volume { get; set; } = 1;

    static string FilePath => Path.Combine(
        Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "Air Sync Remote-Z", "settings.json");

    public static Settings Current { get; } = Load();

    static Settings Load()
    {
        try
        {
            if (File.Exists(FilePath))
                return JsonSerializer.Deserialize<Settings>(File.ReadAllText(FilePath)) ?? new Settings();
        }
        catch (Exception e)
        {
            Log.Error("load settings", e);
        }
        return new Settings();
    }

    public void Save()
    {
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(FilePath)!);
            File.WriteAllText(FilePath, JsonSerializer.Serialize(this, new JsonSerializerOptions { WriteIndented = true }));
        }
        catch (Exception e)
        {
            Log.Error("save settings", e);
        }
    }
}
