# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  imports = [./nvidia.nix ./docker.nix ./hardware.nix];
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;

  services.xserver = {
    xkb.layout = "us";
  };

  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;
}
