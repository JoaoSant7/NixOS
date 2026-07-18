{ pkgs, ... }:

{
  environment.etc."xdg/menus/applications.menu".source = "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

  xdg.mime.enable = true;

  xdg.mime.defaultApplications = {
    "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
    "image/png" = [ "org.gnome.Loupe.desktop" ];
    "image/gif" = [ "org.gnome.Loupe.desktop" ];
    "image/webp" = [ "org.gnome.Loupe.desktop" ];
    "image/bmp" = [ "org.gnome.Loupe.desktop" ];
    "image/tiff" = [ "org.gnome.Loupe.desktop" ];
    "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];
    "image/*" = [ "org.gnome.Loupe.desktop" ];

    "text/html" = "brave-browser.desktop";
    "x-scheme-handler/http" = "brave-browser.desktop";
    "x-scheme-handler/https" = "brave-browser.desktop";
    "x-scheme-handler/about" = "brave-browser.desktop";
    "x-scheme-handler/unknown" = "brave-browser.desktop";
  };
}
