{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    cliphist
    egl-wayland
    hyprcursor
    libsecret
    libgnome-keyring
    hypridle
    hyprpicker
    hyprshutdown
    nwg-displays
    nwg-look
    wl-clipboard
    wlsunset
    wtype
    xclip
    xdg-desktop-portal-hyprland
    xwayland-satellite
  ];
}
