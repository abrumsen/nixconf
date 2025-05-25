{
  programs.nvf.settings.vim = {
    lsp.enable = true;
    lsp.formatOnSave = true;
    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      enableDAP = true;

      bash.enable = true;
      css.enable = true;
      nix.enable = true;
      python.enable = true;
      java.enable = true;
      r.enable = true;
    };
  };
}
