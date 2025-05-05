{
  lib,
  pkgs,
  config,
  ...
}: let
  myvars = import ../../../vars {inherit lib;};
in {
  sops.secrets.user_password = {
    sopsFile = ../../../secrets/secrets.yaml;
    neededForUsers = true;
  };

  users.mutableUsers = false;
  users.users."${myvars.username}" = {
    home = "/home/${myvars.username}";
    name = "${myvars.username}";
    passwordFile = config.sops.secrets.user_password.path;
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
