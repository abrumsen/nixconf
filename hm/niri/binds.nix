{config, ...}: {
  programs.niri.settings = {
    input = {
      keyboard.xkb.layout = "be";
      mouse.accel-speed = -0.8;
    };
    binds = with config.lib.niri.actions; {
      # Management
      "Mod+Colon".action = show-hotkey-overlay;
      "Mod+Shift+E".action.spawn = ["~/nixconf/scripts/powermenu.sh"];
      "Mod+O".action = toggle-overview;
      # Applications
      "Mod+Return".action.spawn = "kitty";
      "Mod+P".action.spawn = "fuzzel";
      "Mod+S".action.spawn = "firefox";
      "Mod+N".action.spawn = "nautilus";
      "Mod+M".action.spawn = ["kitty" "-e" "spotify_player"];
      "Print".action = screenshot;
      # F-keys
      "XF86AudioRaiseVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"];
      "XF86AudioLowerVolume".action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"];
      "XF86AudioMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle"];
      "XF86AudioMicMute".action.spawn = ["wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle"];

      "XF86MonBrightnessDown".action.spawn = ["brightnessctl" "set" "5%-"];
      "XF86MonBrightnessUp".action.spawn = ["brightnessctl" "set" "+5%"];
      # Window
      "Mod+Q".action = close-window;

      "Mod+C".action = center-column;
      "Mod+R".action = switch-preset-column-width;
      "Mod+Shift+R".action = switch-preset-window-height;

      "Mod+F".action = maximize-column;
      "Mod+Shift+F".action = fullscreen-window;

      "Mod+Space".action = switch-focus-between-floating-and-tiling;
      "Mod+Shift+Space".action = toggle-window-floating;

      "Mod+Dead_Circumflex".action = consume-or-expel-window-left;
      "Mod+Dollar".action = consume-or-expel-window-right;

      "Mod+H".action = focus-column-left;
      "Mod+L".action = focus-column-right;
      "Mod+K".action = focus-window-up;
      "Mod+J".action = focus-window-down;

      "Mod+Shift+H".action = move-column-left;
      "Mod+Shift+L".action = move-column-right;
      "Mod+Shift+K".action = move-window-up;
      "Mod+Shift+J".action = move-window-down;

      "Mod+Page_Up".action = focus-workspace-up;
      "Mod+Page_Down".action = focus-workspace-down;
      "Mod+Ampersand".action.focus-workspace = 1;
      "Mod+Eacute".action.focus-workspace = 2;
      "Mod+Quotedbl".action.focus-workspace = 3;
      "Mod+Apostrophe".action.focus-workspace = 4;
      "Mod+Parenleft".action.focus-workspace = 5;
      "Mod+Section".action.focus-workspace = 6;
      "Mod+Egrave".action.focus-workspace = 7;
      "Mod+Exclam".action.focus-workspace = 8;
      "Mod+Ccedilla".action.focus-workspace = 9;

      "Mod+Shift+Page_Up".action = move-column-to-workspace-up;
      "Mod+Shift+Page_Down".action = move-column-to-workspace-down;
      "Mod+Shift+Ampersand".action.move-column-to-workspace = 1;
      "Mod+Shift+Eacute".action.move-column-to-workspace = 2;
      "Mod+Shift+Quotedbl".action.move-column-to-workspace = 3;
      "Mod+Shift+Apostrophe".action.move-column-to-workspace = 4;
      "Mod+Shift+Parenleft".action.move-column-to-workspace = 5;
      "Mod+Shift+Section".action.move-column-to-workspace = 6;
      "Mod+Shift+Egrave".action.move-column-to-workspace = 7;
      "Mod+Shift+Exclam".action.move-column-to-workspace = 8;
      "Mod+Shift+Ccedilla".action.move-column-to-workspace = 9;

      "Mod+Ctrl+Page_Up".action = move-workspace-up;
      "Mod+Ctrl+Page_Down".action = move-workspace-down;

      "Mod+Ctrl+H".action = focus-monitor-left;
      "Mod+Ctrl+L".action = focus-monitor-right;
      "Mod+Ctrl+K".action = focus-monitor-up;
      "Mod+Ctrl+J".action = focus-monitor-down;

      "Mod+Shift+Ctrl+H".action = move-column-to-monitor-left;
      "Mod+Shift+Ctrl+L".action = move-column-to-monitor-right;
      "Mod+Shift+Ctrl+K".action = move-column-to-monitor-up;
      "Mod+Shift+Ctrl+J".action = move-column-to-monitor-down;
    };
  };
}
