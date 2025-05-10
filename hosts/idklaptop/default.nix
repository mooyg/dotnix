# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  imports = [./nvidia.nix ./hardware.nix];
  # Bootloader.
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;
    efiSupport = true;
  };

  networking.networkmanager.enable = true;

  services.xserver = {
    enable = true;
    xkb.layout = "us";
    displayManager.gdm.enable = true; # Enable GDM display manager
    desktopManager.gnome.enable = true; # Enable GNOME
  };

  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;
}
