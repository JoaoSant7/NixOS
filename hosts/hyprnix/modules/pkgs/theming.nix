{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    adw-gtk3
    bibata-cursors
    papirus-nord
    qogir-icon-theme
    sddm-astronaut
    sound-theme-freedesktop
    tela-icon-theme
    kdePackages.qt6ct
    kdePackages.qtsvg
    kdePackages.qtwayland
  ];
}
