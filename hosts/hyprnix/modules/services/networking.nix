{
  services.openssh.enable = true;

  networking.hostName = "hyprnix"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  # Enable networking

  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
  };

  services.resolved = {
    enable = true;

    settings.Resolve = {
      DNS = [
        "45.90.28.0#b61c7e.dns.nextdns.io"
        "45.90.30.0#b61c7e.dns.nextdns.io"
        "2a07:a8c0::#b61c7e.dns.nextdns.io"
        "2a07:a8c1::#b61c7e.dns.nextdns.io"
      ];

      DNSOverTLS = true;
      Domains = [ "~." ];
      FallbackDNS = [ ];
    };
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
