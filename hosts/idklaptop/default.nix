# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  networking.networkmanager.enable = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  imports = [./hardware.nix];
  networking.hostName = hostname;
  networking.computerName = hostname;
}
