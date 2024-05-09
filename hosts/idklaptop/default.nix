# Laptop with NixOS
{...}: let
  hostname = "idklaptop";
in {
  networking.hostName = hostname;
  networking.computerName = hostname;
}
