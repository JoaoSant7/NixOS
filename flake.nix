{
  description = "Backup NixOS";

  nixConfig = {
    extra-substituters = [ "https://noctalia.cachix.org" ];
    extra-trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    nix-flatpak = {
      url = "github:gmodena/nix-flatpak?ref=latest";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia/legacy-v4";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = inputs@{ self, nixpkgs, noctalia, nix-flatpak, ... }: {
    nixosConfigurations = {

      hyprnix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          nix-flatpak.nixosModules.nix-flatpak
          ./hosts/hyprnix/configuration.nix
        ];
      };

    };
  };
}
