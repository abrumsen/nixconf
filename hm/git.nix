{
  programs.git = {
    enable = true;
    userName = "A.Brumsen";
    userEmail = "a.brumsen@protonmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      core = {
        compression = 9;
        whitespace = "error";
        preloadindex = true;
      };
      status = {
        branch = true;
        showStash = true;
      };
    };
  };
}
