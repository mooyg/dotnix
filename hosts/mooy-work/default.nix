{...}: let
  hostname = "mooy-work";
in {
  networking.hostName = hostname;
  networking.computerName = hostname;
}
