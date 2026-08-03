# { pkgs, ... }:

{
  #SDDM.
  #services.displayManager.sddm = {
  #  enable = true;
  #  wayland.enable = true;
  #  package = pkgs.kdePackages.sddm;
  #  extraPackages = with pkgs; [
  #    sddm-astronaut
  #    kdePackages.qtmultimedia # necessário para vídeos/áudio de fundo
  #  ];
  #  theme = "sddm-astronaut-theme";
  #};
}
