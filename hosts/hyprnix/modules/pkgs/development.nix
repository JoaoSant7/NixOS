{ pkgs, ... }:

{
  # Docker virtualisation
  virtualisation.docker = { enable = true; };

  # Podman virtualisation.
  virtualisation.podman = { enable = true; };

  # nh.
  programs.nh = { enable = true; flake = "/home/pedro/Projects/NixOS/"; };

  # direnv.
  programs.direnv = { enable = true; nix-direnv.enable = true; };

  environment.systemPackages = with pkgs;[
    docker
    docker-compose
    gcc
    glib
    libgcc
    lua
    lua-language-server
    nil
    nixpkgs-fmt
    prettier
    python3
    stylua
    tree-sitter
  ];
}
