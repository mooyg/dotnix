{lib, ...}: let
  myvars = import ../../../vars {inherit lib;};
in {
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    isSystemUser = true;
    extraGroups = ["networkmanager" "wheel"];
  };
  users.users.${myvars.username}.group = "mooy";
  users.groups.${myvars.username} = {};
}
