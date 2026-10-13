using System.Windows;
using System.Windows.Threading;
using AirSyncRemote.UI;

namespace AirSyncRemote;

static class Program
{
    [STAThread]
    static void Main()
    {
        Log.Start();
        var app = new Application { ShutdownMode = ShutdownMode.OnMainWindowClose };
        app.DispatcherUnhandledException += (_, e) =>
        {
            Log.Error("unhandled (UI)", e.Exception);
            e.Handled = true;
        };
        AppDomain.CurrentDomain.UnhandledException += (_, e) =>
        {
            if (e.ExceptionObject is Exception ex) Log.Error("unhandled", ex);
        };
        TaskScheduler.UnobservedTaskException += (_, e) =>
        {
            Log.Error("unobserved task", e.Exception);
            e.SetObserved();
        };
        app.Run(new MainWindow());
    }
}
