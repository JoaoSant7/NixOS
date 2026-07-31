{
  services.fstrim.enable = true;
  services.fwupd.enable = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 15d";
  };

  nix.settings.auto-optimise-store = true;

  #nix.optimise.automatic = {
  # enable = true;
  # dates = "weekly";
  #};
}
