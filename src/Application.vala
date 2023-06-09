public class QuickFireNotes.Application : Adw.Application {
    public Application () {
        Object (application_id: Constants.APP_ID);
    }

    protected override void activate () {
        var main_window = this.get_active_window ();

        if (main_window == null) {
            main_window = new MainWindow (this) {
                title = _("QuickFire Notes")
            };
        }

        main_window.present ();

        // Remember window state
        var settings = new Settings (Constants.APP_ID);
        settings.bind ("window-height", main_window, "default-height", SettingsBindFlags.DEFAULT);
        settings.bind ("window-width", main_window, "default-width", SettingsBindFlags.DEFAULT);

        if (settings.get_boolean ("window-maximized")) {
            main_window.maximize ();
        }

        settings.bind ("window-maximized", main_window, "maximized", SettingsBindFlags.SET);
    }
}

public static int main (string[] args) {
    // Enable elementary OS Libadwaita styling special case
    Granite.Settings.get_default ();

    var my_app = new QuickFireNotes.Application ();
    return my_app.run (args);
}
