{ config, pkgs, lib, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    atuin
    #brave
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
    hyprcursor
    hyprlock
    hypridle
    htop
    imagemagick
    jq
    kdePackages.ark
    kdePackages.qt6ct
    kdePackages.breeze-icons
    kdePackages.dolphin
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
    syncthing
    syncthingtray
    noctalia-shell
    nwg-look
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
