{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    distrobox

    docker
    docker-compose

    gvfs

    kitty
    ly

    kdePackages.kde-cli-tools
  ];
}
