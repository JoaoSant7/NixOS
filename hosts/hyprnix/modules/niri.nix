{ config, pkgs, lib, ... }:

{

  # Enable Niri with UWSM for proper session registration.
  programs.niri = {
    enable = true;
  };

  # Enable UWSM.
  programs.uwsm = {
    enable = true;
  };

  # Configure keymap.
  services.xserver.xkb = {
    layout = "us";
    variant = "intl";
    options = "compose:ralt";
  };

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";

    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
      ];
    };
  };

}
