{
  programs.nvf.settings.vim = {
    languages.markdown = {
      enable = true;
      extensions.markview-nvim.enable = true;
    };
    utility.images.image-nvim = {
      enable = true;
      setupOpts.backend = "kitty";
    };
  };
}
