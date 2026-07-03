{ pkgs, ... }:

let
  sddm-astronaut = (pkgs.sddm-astronaut.override {
    embeddedTheme = "astronaut"; # troque pelo tema que preferir
    themeConfig = {
      HeaderTextColor = "#d5c4a1";
      Background = "Backgrounds/your-custom-background.png";
      # ... outras opções de tema
    };
  }).overrideAttrs (oldAttrs: {
    # Injeta seu wallpaper customizado no tema
    installPhase = oldAttrs.installPhase + ''
      chmod u+w $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/
      cp ${../../../nix-wallpapers/catholicon-holy-sepulchre.jpg} \
        $out/share/sddm/themes/sddm-astronaut-theme/Backgrounds/your-custom-background.png
    '';
  });
in
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

  # SDDM
  environment.systemPackages = [ sddm-astronaut ];

  # Configure keymap.
  services.xserver.xkb = {
    layout = "us";
    variant = "intl";
    options = "compose:ralt";
  };

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-gtk
      ];
    };
  };

  # Add cachix cache.
  nix.settings = {
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };
}
