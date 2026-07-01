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

    xclip

    xdg-desktop-portal-hyprland
    xwayland-satellite
  ];
}
