{ config, pkgs, lib, ... }:

{
  # Enable and configure git.
  programs.git = {
    enable = true;

    config = {
      user.name = "JoaoSant7";
      user.email = "pedro_romano7@proton.me";

      init.defaultBranch = "main";
    };
  };

  # Enable programs.
  programs.zsh.enable = true;
  programs.neovim.enable = true;
  programs.bat.enable = true;
  programs.fzf.keybindings = true;
  programs.fzf.fuzzyCompletion = true;
  programs.kdeconnect.enable = true;
  programs.obs-studio.enable = true;
  programs.thunar.enable = true;

  programs = {
    xfconf.enable = true;
    dconf.enable = true;
  };

  # Docker virtualisation
  virtualisation.docker = {
    enable = true;
  };

  virtualisation.podman = {
    enable = true;
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
