{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ffmpeg-full
    imagemagick
    resvg
  ];
}
