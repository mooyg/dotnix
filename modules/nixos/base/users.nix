{lib, ...}: let
  myvars = import ../../../vars {inherit lib;};
in {
  users.mutableUsers = false;
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    isSystemUser = true;
    extraGroups = ["networkmanager" "wheel" "users"];
    hashedPassword = "$7$CU..../....EyeSvcoNhIJLQLcf329k7/$K0p5Oda/2bNLksyoZSpxp3pyvXrH4SKdt3LPhlNnBQ4";
    group = "mooy";
  };
  users.groups = {
    "${myvars.username}" = {};
  };
}
