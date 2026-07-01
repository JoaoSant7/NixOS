{ config, pkgs, lib, ... }:


{
  # Disable any other display manager
  services.displayManager.sddm.enable = false;
  services.displayManager.gdm.enable = false;

  # Enable Ly
  services.displayManager.ly = {
    enable = true;

    # Optional configuration
    settings = {
      animate = true;
      animation = "blackhole";
      bigclock = true;
      hide_borders = true;
      save = true;
      load = true;
      clock = "%H:%M";
      clear_password = true;
    };
  };
}

