{ pkgs, ... }:

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

  # Monitor brightness control.
  hardware.i2c.enable = true;
  users.users.pedro.extraGroups = [ "i2c" ];

  # Enable programs.
  programs.zsh.enable = true;
  programs.neovim.enable = true;
  programs.bat.enable = true;

  # fzf.
  programs.fzf.keybindings = true;
  programs.fzf.fuzzyCompletion = true;

  # KDE Connect.
  programs.kdeconnect.enable = true;

  # OBS Studio.
  programs.obs-studio.enable = true;

  # Lazygit.
  programs.lazygit.enable = true;

  # Thunar.
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs; [
    thunar-volman
    thunar-archive-plugin
    thunar-media-tags-plugin
  ];

  # xfconf dconf.
  programs = {
    xfconf.enable = true;
    dconf.enable = true;
  };

  # Docker virtualisation
  virtualisation.docker = {
    enable = true;
  };

  # Podman virtualisation.
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
