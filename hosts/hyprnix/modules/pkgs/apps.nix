{ pkgs, ... }:

{
  # KDE Connect.
  programs.kdeconnect.enable = true;

  # OBS Studio.
  programs.obs-studio.enable = true;


  environment.systemPackages = with pkgs; [
    (brave.override {
      commandLineArgs = [ "--password-store=basic" ];
    })
    discord
    obsidian
    mpv
    vlc
  ];
}
