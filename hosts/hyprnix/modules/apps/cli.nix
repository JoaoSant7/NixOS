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
    htop
    jq
    lazygit
    poppler
    ripgrep
    stow
    tealdeer
    tmux
    trash-cli
    unzip
    wget
    yazi
    zoxide
    tree-sitter
  ];
}
