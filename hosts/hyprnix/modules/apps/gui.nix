{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    adw-gtk3
    (brave.override {
      commandLineArgs = [ "--password-store=basic" ];
    })
    discord
    distroshelf
    distrobox
    flameshot
    ghostty
    glib
    gnome-calculator
    grim
    kdePackages.breeze-icons
    kdePackages.qt6ct
    kdePackages.qtsvg
    kdePackages.qtwayland
    kitty
    loupe
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
