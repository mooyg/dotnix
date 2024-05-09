{
  inputs,
  lib,
  ...
} @ args: let
  inherit (inputs) haumea;

  data = haumea.lib.load {
    src = ./src;
    inputs = args;
  };

  dataWithoutPaths = builtins.attrValues data;
  outputs = {
    nixosConfigurations = lib.mergeAttrsList (map (it: it.nixosConfigurations or {}) dataWithoutPaths);
  };
in
  outputs
  // {
    inherit data;
  }
