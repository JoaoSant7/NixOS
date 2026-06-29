{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    atuin
    brave
    distrobox
    eza
    egl-wayland
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
    kitty
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
    stow
    syncthing
    syncthingtray
    tealdeer
    tmux
    tree-sitter
    unzip
    vlc
    wlsunset
    wget
    wl-clipboard
    xclip
    yazi
    zoxide
  ];
}
