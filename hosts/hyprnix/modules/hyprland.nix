{ config, pkgs, lib, ... }:

{
  # Enable SDDM.
  services.displayManager.sddm = {
    enable = true;
  };

  # Enable Hyprland.
  programs.hyprland.enable = true;

  # Hint Electron apps to use Wayland.
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Configure keymap.
  services.xserver.xkb = {
    layout = "us";
    variant = "altgr-intl";
  };

  # Enable printing.
  services.printing.enable = true;
}
