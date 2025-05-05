# Laptop with NixOS
{inputs, ...}: let
  hostname = "idklaptop";
in {
  imports = [inputs.sops-nix.nixosModules.sops ./nvidia.nix ./docker.nix ./hardware.nix];
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
