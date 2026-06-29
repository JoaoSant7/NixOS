{ config, pkgs, lib, ... }:

{
  # Enable SDDM.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

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
};

  # Hint Electron apps to use Wayland.
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

# Configure keymap.
services.xserver.xkb = {
  layout = "us";
  variant = "intl"; 
  options = "compose:ralt"; # Forcefully forces Right Alt to act as your Compose key
};

i18n.inputMethod = {
  enable = true;
  type = "fcitx5";
  fcitx5 = {
    waylandFrontend = true;
    addons = with pkgs; [
      fcitx5-gtk  # Crucial for Ghostty and GTK4 apps
    ];
  };
};

# Enable printing.
  services.printing.enable = true;
}
