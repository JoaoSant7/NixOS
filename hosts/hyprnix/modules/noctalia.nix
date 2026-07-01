{ pkgs, inputs, ... }:

{
  services.noctalia-shell.enable = true;

  imports = [ inputs.noctalia.nixosModules.default ];

  nixpkgs.overlays = [ inputs.noctalia.overlays.default ];


  nix.settings = {
    substituters = [ "https://noctalia.cachix.org" ];
    trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
  };
}
