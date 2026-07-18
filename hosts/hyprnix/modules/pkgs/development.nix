{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    cargo
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
