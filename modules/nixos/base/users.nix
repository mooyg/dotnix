{lib, ...}: let
  myvars = import ../../../vars {inherit lib;};
in {
  users.mutableUsers = false;
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "users"];
  };
  users.groups.${myvars.username} = {};
}
