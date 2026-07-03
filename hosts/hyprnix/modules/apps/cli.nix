{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    atuin
    curl
    eza
    fastfetch
    fd
    fzf
    git
    helix
    htop
    jq
    poppler
    ripgrep
    stow
    tealdeer
    tmux
    trash-cli
    unzip
    wget
    xdg-utils
    yazi
    zoxide
  ];
}
