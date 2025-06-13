{
  programs.fish = {
    enable = true;
    shellAliases = {
      ask = "tgpt";
      gs = "git status --short";
      gd = "git diff";
      ga = "git add";
      gA = "git add -A";
      gc = "git commit";
      gp = "git push";
      gu = "git pull";
      gl = "git log --all --graph";
      gb = "git branch";
      gi = "git init";
      gcl = "git clone";
    };
    shellInit = ''
      set fish_greeting
      set -x EDITOR nvim
      set -x TERM kitty
      set -x VISUAL kitty
    '';
  };
}
