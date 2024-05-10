{
  lib,
  pkgs,
  ...
}: let
  myvars = import ../../../vars {inherit lib;};
in {
  users.mutableUsers = false;
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "users"];
    hashedPassword = "$7$CU..../....EyeSvcoNhIJLQLcf329k7/$K0p5Oda/2bNLksyoZSpxp3pyvXrH4SKdt3LPhlNnBQ4";
    group = "mooy";
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  users.groups = {
    "${myvars.username}" = {};
  };
}
