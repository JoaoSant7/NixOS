{ pkgs, pkgs-unstable, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs-unstable.brave-origin
    discord
    obsidian
    mpv
  ];

  # Firefox.
  #programs.firefox.enable = true;

  # KDE Connect.
  programs.kdeconnect.enable = true;

  # OBS Studio.
  programs.obs-studio.enable = true;
}
