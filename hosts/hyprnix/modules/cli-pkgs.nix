{ config, pkgs, lib, ... }:

{
  # Cli packages.
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    atuin
    cargo
    curl
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
    nil
    nixpkgs-fmt
    poppler
    prettier
    python3
    resvg
    ripgrep
    stow
    stylua
    trash-cli
    tealdeer
    tmux
    tree-sitter
    unzip
    wlsunset
    wget
    wl-clipboard
    xclip
    xwayland-satellite
    yazi
    zoxide
  ];
}
