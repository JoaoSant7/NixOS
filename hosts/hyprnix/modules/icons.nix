{ ... }:

{

  environment.variables = {
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };

  environment.etc = {
    "xdg/gtk-3.0/settings.ini".text = ''
      [Settings]
      gtk-icon-theme-name=Qogir-Dark
      gtk-theme-name=Qogir-Dark
    '';

    "xdg/gtk-4.0/settings.ini".text = ''
      [Settings]
      gtk-icon-theme-name=Qogir-Dark
      gtk-theme-name=Qogir-Dark
    '';

    "xdg/qt5ct/qt5ct.conf".text = ''
      [Appearance]
      icon_theme=Qogir-Dark
    '';

    "xdg/qt6ct/qt6ct.conf".text = ''
      [Appearance]
      icon_theme=Qogir-Dark
    '';
  };
}
