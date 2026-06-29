{ config, pkgs, lib, ... }:

{
  # Enable programs.
  programs.zsh.enable = true;
  programs.neovim.enable = true;
  programs.bat.enable = true;
  programs.firefox.enable = true;
  programs.fzf.keybindings = true;
  programs.kdeconnect.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
