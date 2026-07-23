{ inputs, ... }:
{
  imports = [
    inputs.noctalia.nixosModules.default
    inputs.noctalia-greeter.nixosModules.default
  ];

  nixpkgs.overlays = [ inputs.noctalia.overlays.default ];

  programs.noctalia = {
    enable = true;
    systemd.enable = true;
    recommendedServices.enable = true;
  };

  programs.noctalia-greeter = {
    enable = true;

    # Optional configuration
    #greeter-args = "";
    #settings = {
    #cursor = {
    #theme = "Posy_Cursor";
    #size = 32;
    #path = "${pkgs.posy-cursors}/share/icons";
  };

  nix.settings = {
    substituters = [ "https://noctalia.cachix.org" ];
    trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
  };
}
