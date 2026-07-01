{ pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    brave
    boxbuddy
    copyq
    distrobox
    discord
    ghostty
    gnome-calculator
    grim
    loupe
    slurp
    satty
    kdePackages.ark
    kdePackages.qt6ct
    kdePackages.breeze-icons
    kdePackages.gwenview
    kitty
    obsidian
    syncthing
    syncthingtray
    thunar
    nwg-look
    vial
    vlc
    wlsunset
    zed-editor
  ];
}
