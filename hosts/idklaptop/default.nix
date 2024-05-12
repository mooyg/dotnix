# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  imports = [./hardware.nix ./nvidia.nix ./docker.nix ./samba.nix ./k3s.nix];
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;

  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;
  services.logind.lidSwitch = "ignore";
}
