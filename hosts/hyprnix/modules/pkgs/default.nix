{ ... }:

{
  imports = [
    ./apps.nix
    ./cli.nix
    ./flatpaks.nix
    ./functionality.nix
    ./development.nix
    ./productivity.nix
    ./theming.nix
    ./wayland.nix
    ./default-apps.nix
  ];
}
