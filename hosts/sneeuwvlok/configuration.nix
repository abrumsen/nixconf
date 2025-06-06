{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../nixos/neovim/default.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  security.polkit.enable = true;

  virtualisation.docker.enable = true;

  networking = {
    hostName = "sneeuwvlok";
    networkmanager.enable = true;
    firewall = {
      enable = true;
    };
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
  services.blueman.enable = true;

  time.timeZone = "Europe/Brussels";
  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "be-latin1";

  users.users.abrumsen = {
    isNormalUser = true;
    description = "Adriaan Brumsen";
    extraGroups = ["networkmanager" "wheel" "dialout" "wireshark" "docker"];
    shell = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
    polkit_gnome
    wl-clipboard
  ];

  programs = {
    fish.enable = true;
    wireshark.enable = true;
    niri.enable = true;
    nautilus-open-any-terminal = {
      enable = true;
      terminal = "kitty";
    };
    nh = {
      enable = true;
      clean = {
        enable = true;
        extraArgs = "--keep 10";
      };
      flake = "/home/abrumsen/nixconf";
    };
  };

  services.xserver = {
    enable = true;
    xkb.layout = "be";
  };
  services.displayManager.gdm.enable = true;

  services.gvfs.enable = true;

  systemd.user.services.xwayland-satellite = {
    description = "Xwayland outside your Wayland";
    bindsTo = ["graphical-session.target"];
    partOf = ["graphical-session.target"];
    after = ["graphical-session.target"];
    requisite = ["graphical-session.target"];
    serviceConfig = {
      Type = "notify";
      NotifyAccess = "all";
      ExecStart = "${pkgs.xwayland-satellite}/bin/xwayland-satellite";
      StandardOutput = "journal";
    };
    wantedBy = ["niri.service"];
  };

  systemd.user.services.niri-flake-polkit.enable = false;

  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "GNOME polkit agent";
    wantedBy = ["graphical-session.target"];
    wants = ["graphical-session.target"];
    after = ["graphical-session.target"];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
  ];

  system.stateVersion = "24.11";
}
