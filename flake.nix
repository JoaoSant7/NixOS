{
  description = "Backup NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak = {
      url = "github:gmodena/nix-flatpak?ref=latest";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia?ref=v5.0.0-beta.6";
    };

    noctalia-greeter = {
      url = "github:noctalia-dev/noctalia-greeter";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # mangowm = {
    # url = "github:mangowm/mango";
    # inputs.nixpkgs.follows = "nixpkgs";
    # };

  };

  outputs =
    inputs@{ self
    , nixpkgs
    , nixpkgs-unstable
    , noctalia
    , nix-flatpak
    , home-manager
    , ...
    }: {
      nixosConfigurations = {
        gondor = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          specialArgs = {
            inherit inputs;
            pkgs-unstable = import nixpkgs-unstable {
              system = "x86_64-linux";
              config.allowUnfree = true;
            };
          };

          modules = [
            ./hosts/gondor/configuration.nix
            nix-flatpak.nixosModules.nix-flatpak
            home-manager.nixosModules.default

            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.pedro = ./hosts/gondor/modules/home.nix;
              };
            }
          ];
        };
      };
    };
}
