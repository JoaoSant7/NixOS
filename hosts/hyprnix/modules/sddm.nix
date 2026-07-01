{ config, pkgs, lib, ... }:

let
  astronaut = pkgs.sddm-astronaut.override {
    # Change this to another preset if you like.
    embeddedTheme = "astronaut";
  };
in
{
  # Enable SDDM.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    theme = "sddm-astronaut-theme";

    extraPackages = [
      astronaut
    ];
  };

  # Make the theme available system-wide.
  environment.systemPackages = [
    astronaut
  ];
}
