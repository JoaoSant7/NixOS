{ inputs, ... }:

{
  imports = [
    inputs.mangowm.nixosModules.mango
  ];

  programs.mango = {
    enable = true;
    systemd.enable = true;
  };
}
