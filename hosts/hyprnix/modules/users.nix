{ config, pkgs, lib, ... }:

{
  # Define a user account.
  users.users."pedro" = {
    isNormalUser = true;
    description = "Pedro";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };
}
