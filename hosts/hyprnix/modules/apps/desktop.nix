{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    distrobox

    ddcutil
    docker
    docker-compose

    gvfs

    kitty

  ];
}
