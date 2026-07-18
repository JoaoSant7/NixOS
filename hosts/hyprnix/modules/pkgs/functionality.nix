{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    ddcutil
    gvfs
    grim
    satty
    slurp
    ffmpeg-full
    imagemagick
    resvg
  ];
}
