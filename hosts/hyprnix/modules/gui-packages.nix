{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    brave
    boxbuddy
    distrobox
    discord
    ghostty
    kdePackages.ark
    kdePackages.qt6ct
    kdePackages.breeze-icons
    kdePackages.dolphin
    kitty
    obsidian
    syncthing
    syncthingtray
    noctalia-shell
    nwg-look
    vlc
    wlsunset
    zed-editor
  ];
}
