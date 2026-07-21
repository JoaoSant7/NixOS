{ ... }:

{
  # Compressed RAM swap.
  zramSwap = {
    enable = true;
  };

  # Disk swap.
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024; # MiB (8 GiB)
    }
  ];

  # Prefer keeping anonymous pages in RAM.
  boot.kernel.sysctl."vm.swappiness" = 10;
}
