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

    # GDK
    GDK_BACKEND = "wayland";

    # XDG
    XDG_SESSION_TYPE = "wayland";

    # Qt
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_QPA_PLATFORMTHEME = "qt6ct";
    QT_QPA_PLATAFORM = "wayland";

    # Cursor
    #XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_THEME = "Posy_Cursor";
    XCURSOR_SIZE = "32";

    # Hyprcursor
    #HYPRCURSOR_THEME = "Bibata-Modern-Ice";
    HYPRCURSOR_THEME = "Posy_Cursor";
    HYPRCURSOR_SIZE = "32";
  };
}
