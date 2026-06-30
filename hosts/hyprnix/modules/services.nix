{ config, pkgs, lib, ... }:

{
  hardware.bluetooth.enable = true;
  services.power-profiles-daemon.enable = true;
}
