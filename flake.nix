{
  description = "Backup NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    noctalia = {
      url = "github:noctalia-dev/noctalia/legacy-v4";
      inputs.nixpkgs.follows = "nixpkgs-unstable"; # This is great since Noctalia targets unstable
    };
  };

  outputs = inputs@{ self, nixpkgs, noctalia, ... }: {
    nixosConfigurations = { 

      hyprnix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/hyprnix/configuration.nix
          
          # 1. Bring in Noctalia's NixOS module features
          noctalia.nixosModules.default 

          # 2. Keep your overlay so the packages build with the right nixpkgs channel
          { nixpkgs.overlays = [ noctalia.overlays.default ]; }
        ];
      };

    };
  };
}
