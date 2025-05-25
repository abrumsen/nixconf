{
  programs.niri.settings = {
    environment = {
      DISPLAY = ":0";
      ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    };
    spawn-at-startup = [
      {command = ["swww-daemon"];}
      {command = ["xwayland-satellite"];}
      {command = ["discord" "--start-minimized"];}
      {command = ["waybar"];}
    ];
  };
}
