{ pkgs, ... }:

{
  environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

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
