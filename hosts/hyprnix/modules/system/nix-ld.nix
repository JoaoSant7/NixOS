{ pkgs, ... }:

{
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      # Add libraries here as you discover you need them.
    ];
  };
}
