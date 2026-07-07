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
    uv
    wget
    xdg-utils
    yazi
    yt-dlp
    zoxide
  ];
}
