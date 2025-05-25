{
  programs.nvf.settings.vim = {
    filetree.neo-tree = {
      enable = true;
      setupOpts.enable_cursor_hijack = true;
    };
    keymaps = [
      {
        key = "<C-n>";
        mode = "n";
        action = ":Neotree toggle<CR>";
      }
    ];
  };
}
