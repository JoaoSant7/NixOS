{ config, pkgs, lib, ... }:

{
  # Define a user account.
  users.users."pedro" = {
    isNormalUser = true;
    description = "Pedro";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      # thunderbird
    ];
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 15d";
  };
}
