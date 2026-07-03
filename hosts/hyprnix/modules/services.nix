{ pkgs, ... }:

{
  hardware.bluetooth.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.power-profiles-daemon.enable = true;

  services.gvfs.enable = true;

  # udev services.
  services.udev.enable = true;
  services.udev.packages = with pkgs; [
    vial
    via
  ];

  # Flatpaks.
  services.flatpak = {
    enable = true;
  };

  #Syncthing
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "pedro";
    group = "users";
    configDir = "/home/pedro/.config/syncthing";
  };

  #SDDM

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    extraPackages = with pkgs; [
      kdePackages.qtmultimedia # necessário para vídeos/áudio de fundo
    ];
    theme = "sddm-astronaut-theme";
  };

  #XDG Portals.
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
      kdePackages.xdg-desktop-portal-kde
    ];
    config = {
      common.default = [ "hyprland" "gtk" ];
      hyprland.default = [ "hyprland" "gtk" ];
      hyprland."org.freedesktop.impl.portal.FileChooser" = [ "kde" ];
    };
    xdgOpenUsePortal = false;
  };


  # Enable printing.
  services.printing.enable = true;

  # Enable nix garbage collection.
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 15d";
  };
}
