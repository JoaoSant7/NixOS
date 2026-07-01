{ pkgs, ... }:

let
  cli = import ./cli.nix { inherit pkgs; };
  gui = import ./gui.nix { inherit pkgs; };
  desktop = import ./desktop.nix { inherit pkgs; };
  development = import ./development.nix { inherit pkgs; };
  multimedia = import ./multimedia.nix { inherit pkgs; };
  wayland = import ./wayland.nix { inherit pkgs; };
in
{
  environment.systemPackages =
    cli
    ++ gui
    ++ desktop
    ++ development
    ++ multimedia
    ++ wayland;
}
