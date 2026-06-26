{ config, pkgs, lib, ... }:

let
  background-package = pkgs.stdenvNoCC.mkDerivation {
    name = "background-image";
    src = ../../../nix-wallpapers/white-mountain.jpg;
    dontUnpack = true;
    installPhase = ''
      cp $src $out
    '';
  };
in
{
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    theme = "breeze";
  };

  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11.
  services.xserver.xkb = {
    layout = "us";
    variant = "altgr-intl";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # SDDM wallpaper override.
  environment.systemPackages = [
    (pkgs.writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
      [General]
      background = "${background-package}"
    '')
  ];
}
