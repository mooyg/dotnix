## MacBook for work.
let
  hostname = "idk-mac";
in {
  networking.hostName = hostname;
  networking.computerName = hostname;
}
