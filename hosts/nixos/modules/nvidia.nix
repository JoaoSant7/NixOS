{ config, pkgs, lib, ... }:

{
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    nvidiaSettings = true;
    branch = "stable";
    powerManagement.enable = true; # Enable NVIDIA suspend/resume services
    powerManagement.finegrained = false;
  };
}
