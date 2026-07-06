{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cliphist

    egl-wayland

    hyprcursor
    hypridle
    #hyprlock
    hyprpicker
    hyprshutdown

    wl-clipboard
    wlsunset

    wtype

    xclip

    xdg-desktop-portal-hyprland
    xwayland-satellite
  ];
}
