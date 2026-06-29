{ config, pkgs, lib, ... }:

let
  astronaut = pkgs.sddm-astronaut.override {
    # Change this to another preset if you like.
    embeddedTheme = "astronaut";
  };
in
{
  # Enable SDDM.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    theme = "sddm-astronaut-theme";

    extraPackages = [
      astronaut
    ];
  };

  # Make the theme available system-wide.
  environment.systemPackages = [
    astronaut
  ];

  # Enable Hyprland with UWSM for proper session registration.
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  # Enable UWSM.
  programs.uwsm = {
    enable = true;

    # Uncomment this if you need a custom compositor entry.
    # waylandCompositors = {
    #   hyprland = {
    #     prettyName = "Hyprland";
    #     comment = "Hyprland compositor managed by UWSM";
    #     binPath = "/run/current-system/sw/bin/uwsm-start-hyprland";
    #   };
    # };
  };

  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt6ct";
    NIXOS_OZONE_WL = "1";
  };

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

  # Enable printing.
  services.printing.enable = true;
}
