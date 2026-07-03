{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    #boxbuddy
    #copyq
    distroshelf
    distrobox
    discord
    ghostty
    gnome-calculator

    grim
    slurp
    satty

    sddm-astronaut

    kdePackages.ark
    kdePackages.baloo
    kdePackages.baloo-widgets
    kdePackages.dolphin
    kdePackages.dolphin-plugins
    kdePackages.qt6ct
    kdePackages.qtwayland
    kdePackages.breeze-icons
    kdePackages.gwenview
    qogir-icon-theme

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
