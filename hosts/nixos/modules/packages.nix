{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    atuin
    brave
    distrobox
    docker
    eza
    fastfetch
    fd
    ffmpeg-full
    fzf
    gcc
    ghostty
    git
    htop
    imagemagick
    jq
    lazygit
    libgcc
    lua
    lua-language-server
    nerd-fonts.jetbrains-mono
    poppler
    prettier
    python3
    resvg
    ripgrep
    sddm-astronaut
    stow
    syncthing
    syncthingtray
    tealdeer
    tmux
    tree-sitter
    unzip
    vlc
    wget
    wl-clipboard
    xclip
    yazi
    zoxide
  ];
}
