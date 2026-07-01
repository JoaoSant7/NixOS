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
    slurp
    satty
    kdePackages.ark
    kdePackages.qt6ct
    kdePackages.breeze-icons
    kdePackages.dolphin
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
