{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    cargo
    gcc
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
