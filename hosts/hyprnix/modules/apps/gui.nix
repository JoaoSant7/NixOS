{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    adw-gtk3

    brave

    # copyq

    discord
    distroshelf
    distrobox

    ghostty
    glib
    gnome-calculator
    grim

    kdePackages.ark
    kdePackages.breeze-icons
    kdePackages.gwenview
    kdePackages.qt6ct
    kdePackages.qtsvg
    kdePackages.qtwayland

    kitty

    nwg-look

    obsidian

    qogir-icon-theme

    satty
    sddm-astronaut
    slurp
    sound-theme-freedesktop
    syncthing
    syncthingtray

    vial
    vlc

    wlsunset

    zed-editor
  ];
}
