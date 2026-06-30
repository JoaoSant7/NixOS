{ config, pkgs, lib }:

{
  hardware.bluetooh.enable = true;
  services.power-profiles-daemon.enable = true;
  services.tuned.enable = true;
  servies.upower.enable = true;
}
