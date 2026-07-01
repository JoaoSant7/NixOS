{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    boxbuddy
    copyq
    distrobox
    discord
    ghostty
    gnome-calculator

    grim
    slurp
    satty

    kdePackages.ark
    kdePackages.baloo
    kdePackages.baloo-widgets
    kdePackages.dolphin
    kdePackages.dolphin-plugins
    kdePackages.qt6ct
    kdePackages.qtwayland
    kdePackages.breeze-icons
    kdePackages.gwenview

    kitty
    obsidian
    syncthing
    syncthingtray
    nwg-look
    vial
    vlc
    wlsunset
    zed-editor
  ];
}
