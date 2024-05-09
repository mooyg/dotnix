{
  inputs,
  mylib,
  myvars,
  system,
  lib,
  ...
} @ args: let
  name = "idklaptop";
  modules = {
    # FIX: Removed host specific config for now.
    nixos-modules = [../../../modules/nixos ../../../hosts/${name}];
    home-modules = [../../../home/nixos];
  };
  systemArgs = modules // args;
in {
  nixosConfigurations.${name} = mylib.nixosSystem systemArgs;
}
