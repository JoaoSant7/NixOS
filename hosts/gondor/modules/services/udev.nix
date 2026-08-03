{ pkgs, ... }:

{
  services.udev.enable = true;

  services.udev.packages = with pkgs; [
    vial
    via
  ];
}
