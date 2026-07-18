{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    kitty
    gnome-calculator
    distroshelf
    flameshot
    loupe
    syncthing
    syncthingtray
    vial
    zed-editor
  ];
}
