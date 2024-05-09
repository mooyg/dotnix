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
    nixos-modules = [../../../modules/nixos ../../../hosts/${name}];
    home-modules = [../../../home/nixos];
  };
  systemArgs = modules // args;
in {
  nixosConfigurations.${name} = mylib.nixosSystem systemArgs;
}
