# Not sure why args don't expand if I don't specify them in the head. So for the timing expanding it.
{
  inputs,
  mylib,
  myvars,
  system,
  lib,
  ...
} @ args: let
  name = "idk-mac";
  modules = {
    darwin-modules = [../../../modules/darwin ../../../hosts/darwin-${name}];
    home-modules = [../../../home/darwin];
  };
  systemArgs = modules // args;
in {
  darwinConfigurations.${name} = mylib.macosSystem systemArgs;
}
