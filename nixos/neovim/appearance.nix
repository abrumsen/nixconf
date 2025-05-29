{
  programs.nvf.settings.vim = {
    theme = {
      enable = true;
      name = "dracula";
    };
    dashboard.alpha.enable = true;
    ui = {
      noice.enable = true;
      breadcrumbs = {
        enable = true;
        navbuddy.enable = true;
      };
      illuminate.enable = true;
      colorizer.enable = true;
    };
    visuals.indent-blankline.enable = true;
    statusline.lualine.enable = true;
    tabline.nvimBufferline.enable = true;
    keymaps = [
      {
        key = "<leader>nv";
        mode = "n";
        action = ":Navbuddy<CR>";
      }
    ];
  };
}
