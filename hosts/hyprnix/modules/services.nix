{ config, pkgs, lib, ... }:

{
  hardware.bluetooth.enable = true;
  services.power-profiles-daemon.enable = true;

  services.udev.enable = true;

  services.udev.packages = with pkgs; [
    vial
    via
  ];

  # Enable printing.
  services.printing.enable = true;
}
