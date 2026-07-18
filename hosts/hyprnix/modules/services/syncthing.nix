{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;

    user = "pedro";
    group = "users";
    configDir = "/home/pedro/.config/syncthing";
  };
}
