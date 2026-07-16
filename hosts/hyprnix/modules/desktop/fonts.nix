{
  fonts = {
    fontconfig = {
      enable = true;

      antialias = true;

      hinting = {
        enable = true;
        style = "slight";
      };

      subpixel = {
        rgba = "rgb";          # rgb, bgr, vrgb, vbgr, none
        lcdfilter = "default"; # or "light"
      };
    };
  };
}
