{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;[
    distrobox

    docker
    docker-compose

    gvfs

    kitty

    kdePackages.kde-cli-tools
  ];
}
