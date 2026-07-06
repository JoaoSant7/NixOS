{ inputs, ... }:
{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };

    users.pedro = { ... }: {
      imports = [
        inputs.noctalia.homeModules.default
      ];

      home.stateVersion = "26.05";

      programs.noctalia = {
        enable = true;
        systemd.enable = true;
      };
    };
  };
}
