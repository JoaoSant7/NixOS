{ pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      corefonts
    ];
    fontconfig = {
      enable = true;

      antialias = true;

      hinting = {
        enable = true;
        style = "slight";
      };

      subpixel = {
        rgba = "rgb"; # rgb, bgr, vrgb, vbgr, none
        lcdfilter = "default"; # or "light"
      };
    };
  };
}
