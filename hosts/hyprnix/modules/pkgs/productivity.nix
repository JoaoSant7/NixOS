{ pkgs, ... }:

{
  # Thunar.
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs; [
    thunar-volman
    thunar-archive-plugin
    thunar-media-tags-plugin
  ];

  environment.systemPackages = with pkgs; [
    ghostty
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
