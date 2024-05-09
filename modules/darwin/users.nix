{lib, ...}: let
  myvars = import ../../vars {inherit lib;};
in {
  users.users."${myvars.username}" = {
    home = "/Users/${myvars.username}";
    name = "${myvars.username}";
  };
}
