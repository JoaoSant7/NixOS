{ ... }:

{
  home.stateVersion = "26.05";

  imports = [
    ./cursors.nix
  ];

  home.username = "pedro";
  home.homeDirectory = "/home/pedro";

}
