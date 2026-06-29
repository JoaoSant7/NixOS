{
  description = "Backup NixOS";

  inputs = {
  nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

  noctalia = {
    url = "github:noctalia-dev/noctalia/legacy-v4";
    inputs.nixpkgs.follows = "nixpkgs-unstable";
  };
};

  outputs = inputs@{ self, nixpkgs, noctalia, ... }: {
    nixosConfigurations = {

      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/nixos/configuration.nix
        ];
      };

      hyprnix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/hyprnix/configuration.nix
          { nixpkgs.overlays = [ noctalia.overlays.default ]; }
        ];
      };

    };
  };
}
