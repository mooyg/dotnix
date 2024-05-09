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
    # TODO: Removed host specific for now
    darwin-modules = [../../../modules/darwin];
    home-modules = [../../../home/darwin-${name}/home.nix];
  };
  systemArgs = modules // args;
in {
  darwinConfigurations.${name} = mylib.macosSystem systemArgs;
}
