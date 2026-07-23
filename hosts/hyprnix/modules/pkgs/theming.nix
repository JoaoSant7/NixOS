{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    adw-gtk3
    sound-theme-freedesktop
    tela-icon-theme
    kdePackages.qt6ct
    #kdePackages.qtsvg
    kdePackages.qtwayland
  ];
}
