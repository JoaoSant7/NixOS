{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cliphist
    egl-wayland
    hyprcursor
    libsecret
    libgnome-keyring
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
