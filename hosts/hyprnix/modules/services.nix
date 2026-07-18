{ pkgs, ... }:

{
  hardware.bluetooth.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Enable fstrim.
  services.fstrim.enable = true;

  # Enable fwupd.
  services.fwupd.enable = true;

  # Power profiles
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;

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

  # Syncthing.
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "pedro";
    group = "users";
    configDir = "/home/pedro/.config/syncthing";
  };

  #gvfs and tumbler.
  services = {
    gvfs.enable = true;
    tumbler.enable = true;
  };

  #GNOME Keyring.
  services.gnome.gnome-keyring.enable = true;

  ##SDDM.
  #services.displayManager.sddm = {
  #  enable = true;
  #  wayland.enable = true;
  #  package = pkgs.kdePackages.sddm;
  #  extraPackages = with pkgs; [
  #    sddm-astronaut
  #    kdePackages.qtmultimedia # necessário para vídeos/áudio de fundo
  #  ];
  #  theme = "sddm-astronaut-theme";
  #};

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

  nix.optimise.automatic = true;
}
