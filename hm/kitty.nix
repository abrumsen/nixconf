{
  programs.kitty = {
    enable = true;
    themeFile = "Dracula";
    shellIntegration.enableFishIntegration = true;
    settings = {
      font_family = "Miracode";
      font_size = 12.0;
      enable_audio_bell = "no";
      shell_integration = "enabled";
      cursor_trail = 3;
    };
  };

  home.file.".local/share/applications/nvim-kitty.desktop".text = ''
    [Desktop Entry]
    Name=Neovim (Kitty)
    Comment=Edit files in Neovim using Kitty
    Exec=kitty -e nvim %F
    Terminal=false
    Type=Application
    MimeType=text/plain;text/markdown;
    Categories=Utility;TextEditor;
  '';

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/markdown" = "nvim-kitty.desktop";
      "text/plain" = "nvim-kitty.desktop";
    };
  };
}
