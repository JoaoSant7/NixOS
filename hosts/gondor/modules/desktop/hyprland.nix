{ ... }:

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

  # Fix issues with gtk themes.
  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        gtk-theme = "adw-gtk3-dark";
        icon-theme = "Adwaita";

        cursor-theme = "Bibata-Modern-Ice";
        cursor-size = 24;

        font-name = "Rubik Regular 12";
        document-font-name = "Rubik Regular 12";
        monospace-font-name = "JetBrainsMono Nerd Font 12";
      };
    }
  ];
}
