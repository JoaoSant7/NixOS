{ config, pkgs, lib, ... }:

{
  environment.sessionVariables = {

    NIXOS_OZONE_WL = "1";


    GBM_BACKEND = "nvidia_drm";
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";

    XCURSOR_THEME = "bibata-modern-ice";
    XCURSOR_SIZE = "24";

    HYPRCURSOR_THEME = "bibata-modern-ice";
    HYPRCURSOR_SIZE = "24";

    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };
}
