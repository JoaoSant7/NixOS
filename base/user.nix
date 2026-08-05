{ pkgs, ... }:

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

  # Enable and configure git.
  programs.git = {
    enable = true;

    config = {
      user.name = "JoaoSant7";
      user.email = "pedro_romano7@proton.me";

      init.defaultBranch = "main";
    };

  };
}
