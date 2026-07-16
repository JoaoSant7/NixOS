{ ... }:

{
  imports = [
    ./cli.nix
    ./gui.nix
    ./desktop.nix
    ./development.nix
    ./multimedia.nix
    ./programs.nix
    ./wayland.nix
    ./default-apps.nix
  ];
}
