# Not sure why args don't expand if I don't specify them in the head. So for the timing expanding it.
{
  inputs,
  mylib,
  myvars,
  system,
  lib,
  ...
} @ args: let
  name = "mooy-work";
  modules = {
    darwin-modules = [../../../modules/darwin ../../../hosts/${name}];
    home-modules = [../../../home/darwin];
  };
  systemArgs = modules // args;
in {
  darwinConfigurations.${name} = mylib.macosSystem systemArgs;
}
