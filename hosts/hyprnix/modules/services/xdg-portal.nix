{ pkgs, ... }:

{
  xdg.portal = {
    enable = true;

    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
      kdePackages.xdg-desktop-portal-kde
    ];

    config = {
      common.default = [ "hyprland" "gtk" ];

      hyprland.default = [ "hyprland" "gtk" ];
      hyprland."org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
    };

    xdgOpenUsePortal = false;
  };
}
