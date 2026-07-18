{ ... }:

{
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";

    # NVIDIA
    GBM_BACKEND = "nvidia_drm";
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";

    # Electron
    ELECTRON_OZONE_PLATFORM_HINT = "auto";

    # Qt
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_QPA_PLATFORMTHEME = "qt6ct";

    # Cursor
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "24";

    # Hyprcursor
    HYPRCURSOR_THEME = "Bibata-Modern-Ice";
    HYPRCURSOR_SIZE = "24";
  };
}
