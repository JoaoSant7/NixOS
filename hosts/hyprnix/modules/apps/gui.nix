{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adw-gtk3

    brave
    #boxbuddy
    #copyq
    distroshelf
    distrobox
    discord
    ghostty
    gnome-calculator

    glib

    grim
    slurp
    satty

    sddm-astronaut

    kdePackages.ark
    kdePackages.qt6ct
    kdePackages.qtsvg
    kdePackages.qtwayland
    kdePackages.breeze-icons
    kdePackages.gwenview

    papirus-icon-theme
    papirus-folders
    adwaita-icon-theme

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
