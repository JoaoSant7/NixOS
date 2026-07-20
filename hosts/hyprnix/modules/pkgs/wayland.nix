{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cliphist
    egl-wayland
    hyprcursor
    libsecret
    libgnome-keyring
    hyprpicker
    nwg-look
    wl-clipboard
    wlsunset
    wtype
    xclip
    xdg-desktop-portal-hyprland
    xwayland-satellite
  ];
}
