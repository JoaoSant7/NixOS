{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    kitty
    gnome-calculator
    distroshelf
    file-roller
    flameshot
    loupe
    syncthing
    syncthingtray
    vial
    zed-editor
  ];
}
