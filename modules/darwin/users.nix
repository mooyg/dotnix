{lib, ...}: let
  myvars = import ../../vars {inherit lib;};
in {
  users.users."${myvars.username}" = {
    home = "/Users/mooy";
    name = "${myvars.username}";
  };
}
