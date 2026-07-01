{ ... }:

{
  imports = [
    ./cli.nix
    ./gui.nix
    ./desktop.nix
    ./development.nix
    ./multimedia.nix
    ./wayland.nix
    ./default-apps.nix
  ];
}
