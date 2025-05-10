{
  lib,
  pkgs,
  config,
  ...
}: let
  myvars = import ../../../vars {inherit lib;};
in {
  users.mutableUsers = false;
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    hashedPassword = "$6$vKZuDiKhsox3gpvr$fayOYJN46T7ML5xMCtsUmxR9KYvzgwDYwhFg8W6FZFEar3fcw/HxBK8BVi0BCSGbj7qqZRzzwKXxoJ2n/m3sN.";
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel" "users" "docker"];
    group = "mooy";
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  users.groups = {
    "${myvars.username}" = {};
  };
}
