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
    hashedPassword = "$6$orQz5xGVY4R9AxWe$ZB.JwHeqPPU3F.cZ.x5n3yZereBItTK3.3Dg.4nhIxF4C.SJ4gJQY4IZhLAtOdLXRbMliIE5B2eY2YQTs1F.E0";
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "users"];
    group = "mooy";
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  users.groups = {
    "${myvars.username}" = {};
  };
}
