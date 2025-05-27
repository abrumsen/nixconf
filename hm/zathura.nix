{
  programs.zathura = {
    enable = true;
    extraConfig = ''
      # copy selection to system clipboard
      set selection-clipboard clipboard
      # theme
      set default-bg "#282a36"
      set default-fg "#f8f8f2"
    '';
  };
}
