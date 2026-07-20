{ pkgs, ... }:

#let
#  sddm-astronaut = (pkgs.sddm-astronaut.override {
#    embeddedTheme = "astronaut";
#    themeConfig = {
#      HeaderTextColor = "#d5c4a1";
#      Background = "Backgrounds/your-custom-background.png";
#      # ... outras opções de tema
#    };
#  }).overrideAttrs (oldAttrs: {
#    # Injeta seu wallpaper customizado no tema
#    installPhase = oldAttrs.installPhase + ''
#      chmod u+w $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/
#      cp ${../../../nix-wallpapers/mountain-above-clouds.jpg} \
#        $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/your-custom-background.png
#    '';
#  });
#in
{
  # Enable Hyprland with UWSM for proper session registration.
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  # Enable UWSM.
  programs.uwsm = {
    enable = true;
  };

  # Add cachix cache.
  nix.settings = {
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };
}
