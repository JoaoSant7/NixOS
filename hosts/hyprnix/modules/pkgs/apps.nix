{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (brave.override {
      commandLineArgs = [ "--password-store=basic" ];
    })
    discord
    obsidian
    mpv
    #vlc
  ];

  # KDE Connect.
  programs.kdeconnect.enable = true;

  # OBS Studio.
  programs.obs-studio.enable = true;
}
