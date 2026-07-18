{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (brave.override {
      commandLineArgs = [ "--password-store=basic" ];
    })
    discord
    obsidian
    vlc
  ];
}
