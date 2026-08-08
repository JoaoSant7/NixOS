{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adw-gtk3
    adwaita-icon-theme
    kdePackages.qt6ct
    libsForQt5.qt5.qtwayland
    kdePackages.qtwayland
  ];
}
