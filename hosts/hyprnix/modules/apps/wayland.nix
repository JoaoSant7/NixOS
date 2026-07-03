{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    egl-wayland

    hyprcursor
    hypridle
    #hyprlock
    hyprshutdown

    wl-clipboard
    wlsunset

    wtype

    xclip

    xdg-desktop-portal-hyprland
    xwayland-satellite
  ];
}
