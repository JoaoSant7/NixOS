{ config, pkgs, lib, ... }:

{
  # Enable SDDM.
  services.displayManager.sddm = {
    enable = true;
  };
  
  # Enable noctalia.
  programs.noctalia.enable = true; 
 
{
  programs.hyprland.enable = true;

  # Optional, but recommended
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}

  # Configure keymap in X11.
  services.xserver.xkb = {
    layout = "us";
    variant = "altgr-intl";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;


  ];
}
