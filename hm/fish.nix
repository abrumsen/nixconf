{
  programs.fish = {
    enable = true;
    shellAliases = {
      ask = "tgpt";
    };
    shellInit = ''
      set fish_greeting
      set -x EDITOR nvim
      set -x TERM kitty
      set -x VISUAL kitty
    '';
  };
}
