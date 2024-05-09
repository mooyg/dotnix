# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  imports = [./docker.nix];
  networking.hostName = hostname;
  networking.computerName = hostname;
}
