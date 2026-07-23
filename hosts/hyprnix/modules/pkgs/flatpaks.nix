{ ... }:

{
  services.flatpak = {
    enable = true;
    packages = [
      "org.prismlauncher.PrismLauncher"
      "com.github.tchx84.Flatseal"
    ];
  };
}
