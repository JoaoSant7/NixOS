{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    distroshelf
    file-roller
    flameshot
    loupe
    sioyek
    syncthing
    syncthingtray
    vial
    zed-editor
  ];

  # Thunar.
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs; [
    thunar-volman
    thunar-archive-plugin
    thunar-media-tags-plugin
  ];
}
