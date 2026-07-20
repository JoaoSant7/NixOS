{ pkgs, ... }:

{
  # Enable Niri with UWSM for proper session registration.
  programs.niri = {
    enable = true;
  };

  # Enable UWSM.
  programs.uwsm = {
    enable = true;
  };

  # Configure Niri to use gtk file picker.
  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ]; # or "kde"
  };

}
