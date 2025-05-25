{
  programs.niri.settings = {
    prefer-no-csd = true;
    layout = {
      gaps = 10;
      focus-ring = {
        width = 2;
        active = {color = "rgb(98 114 164)";};
        inactive = {color = "rgb(40 42 54)";};
      };
      center-focused-column = "on-overflow";
      default-column-width.proportion = 2.0 / 3.0;
      preset-column-widths = [
        {proportion = 1.0 / 3.0;}
        {proportion = 1.0 / 2.0;}
        {proportion = 2.0 / 3.0;}
      ];
      preset-window-heights = [
        {proportion = 1.0 / 3.0;}
        {proportion = 1.0 / 2.0;}
        {proportion = 2.0 / 3.0;}
      ];
    };
    window-rules = [
      {
        geometry-corner-radius = {
          top-left = 12.0;
          top-right = 12.0;
          bottom-left = 12.0;
          bottom-right = 12.0;
        };
        clip-to-geometry = true;
      }
    ];
  };
}
