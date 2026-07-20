{ pkgs, ... }:

{
  services.xserver.xkb = {
    layout = "us,br";
    variant = "intl,";
    options = "grp:win_space_toggle,compose:ralt";
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

  xdg.portal.config.common = {
    "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ]; # or "kde"
  };

}
