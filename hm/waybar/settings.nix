{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      modules-left = ["niri/workspaces"];
      modules-center = ["clock"];
      modules-right = ["network" "custom/separator" "battery"];
      battery = {
        states = {
          warning = 20;
          critical = 10;
        };
        format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
      };
      clock = {
        format = "{:%a %d/%m/%y %H:%M}";
        tooltip = false;
      };
      network = {
        family = "ipv4";
        format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
        format-ethernet = "󰈀 {ipaddr}/{cidr}";
        format-wifi = "{icon} {essid}";
        format-disconnected = "󰤮 No connection";
        tooltip-format = "IP: {ipaddr}/{cidr}\nDefault gateway: {gwaddr}";
        tooltip-format-disconnected = "No wireless or ethernet connection";
      };
      "custom/separator" = {
        format = " | ";
        tooltip = false;
        interval = "once";
      };
    };
  };
}
