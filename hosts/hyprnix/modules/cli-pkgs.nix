{ config, pkgs, lib, ... }:

{
  # Cli packages.
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    atuin
    cargo
    distrobox
    eza
    egl-wayland
    fastfetch
    fd
    ffmpeg-full
    fzf
    gcc
    git
    hyprcursor
    hyprlock
    hypridle
    htop
    imagemagick
    jq
    kitty
    lazygit
    libgcc
    lua
    lua-language-server
    poppler
    prettier
    python3
    resvg
    ripgrep
    stow
    stylua
    tealdeer
    tmux
    tree-sitter
    unzip
    wlsunset
    wget
    wl-clipboard
    xclip
    yazi
    zoxide
  ];
}
