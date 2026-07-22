{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    ddcutil
    gvfs
    grim
    #openal
    #openal-soft
    satty
    slurp
    ffmpeg-full
    imagemagick
    resvg
  ];
  # Monitor brightness control.
  hardware.i2c.enable = true;
  users.users.pedro.extraGroups = [ "i2c" ];

  # xfconf and dconf.
  programs = { xfconf.enable = true; dconf.enable = true; };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
