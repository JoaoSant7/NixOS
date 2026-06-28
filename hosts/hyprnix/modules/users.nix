{ config, pkgs, lib, ... }:

{
  # Define a user account. Don't forget to set a password with 'passwd'.
  users.users."pedro" = {
    isNormalUser = true;
    description = "Pedro";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      #  thunderbird
    ];
  };
}
