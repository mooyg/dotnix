{...} @ inputs: let
  inherit (inputs.nixpkgs) lib;

  # Import mylib which contains `macosSystem` derivations to build the system and other as well.
  mylib = import ../lib {
    inherit lib;
  };

  myvars = import ../vars {inherit lib;};

  # Pass inputs, mylib, myvars and lib to every system
  args = {
    inherit inputs mylib myvars lib;
  };

  darwinSystems = {
    aarch64-darwin = import ./aarch64-darwin (args
      // {
        system = "aarch64-darwin";
      });
  };
  darwinSystemsValue = builtins.attrValues darwinSystems;
in {
  darwinConfigurations = lib.mergeAttrsList (map (it: it.darwinConfigurations or {}) darwinSystemsValue);
}
