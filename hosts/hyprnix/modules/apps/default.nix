{ pkgs, ... }:

let
  cli = import ./cli.nix { inherit pkgs; };
  development = import ./development.nix { inherit pkgs; };
  desktop = import ./desktop.nix { inherit pkgs; };
  gui = import ./gui.nix { inherit pkgs; };
  multimedia = import ./multimedia.nix { inherit pkgs; };
  wayland = import ./wayland.nix { inherit pkgs; };
  defaultApps = import ./default-apps.nix { inherit pkgs; };
in
{
  environment.systemPackages =
    cli
    ++ development
    ++ desktop
    ++ gui
    ++ multimedia
    ++ wayland
    ++ defaultApps;
}
