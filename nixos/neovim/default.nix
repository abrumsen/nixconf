{
  imports = [
    ./appearance.nix
    ./autocompletion.nix
    ./languages.nix
    ./markdown.nix
    ./neotree.nix
    ./options.nix
  ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        binds.whichKey.enable = true;
        git.enable = true;
        telescope.enable = true;
      };
    };
  };
}
