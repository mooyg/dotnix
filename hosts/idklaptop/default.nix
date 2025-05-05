# Laptop with NixOS
{inputs, ...}: let
  hostname = "idklaptop";
in {
  imports = [./nvidia.nix ./docker.nix ./hardware.nix inputs.sops-nix.nixOsModules.sops];
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;

  services.xserver = {
    enable = true;
    xkb.layout = "us";
    displayManager.gdm.enable = true;  # Enable GDM display manager
    desktopManager.gnome.enable = true;  # Enable GNOME
  };

  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;

  }
