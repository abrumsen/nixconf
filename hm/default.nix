{pkgs, ...}: {
  imports = [
    ./fastfetch/default.nix
    ./fish.nix
    ./freetube.nix
    ./fuzzel.nix
    ./git.nix
    ./gtk.nix
    ./kitty.nix
    ./mako.nix
    ./niri/default.nix
    ./waybar/default.nix
    ./zathura.nix
  ];
  home = {
    username = "abrumsen";
    homeDirectory = "/home/abrumsen";
    packages = with pkgs; [
      firefox
      keepassxc
      discord
      swww
      wev
      bat
      duf
      xh
      tio
      p7zip
      ripgrep
      jq
      nmap
      tree
      btop
      nautilus
      networkmanagerapplet
      wireshark
      remmina
      libnotify
      darkhttpd
      imv
      slides
      brightnessctl
      ciscoPacketTracer8
      spotify-player
      tgpt
      caprine
    ];
    stateVersion = "25.11";
  };

  programs = {
    home-manager.enable = true;
    swaylock.enable = true;
  };
}
