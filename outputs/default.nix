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
  nixosSystems = {
    x86_64-linux = import ./x86_64-linux (args
      // {
        system = "x86_64-linux";
      });
  };

  nixosSystemsValue = builtins.attrValues nixosSystems;
  darwinSystemsValue = builtins.attrValues darwinSystems;
in {
  darwinConfigurations = lib.mergeAttrsList (map (it: it.darwinConfigurations or {}) darwinSystemsValue);
  nixosConfigurations = lib.mergeAttrsList (map (it: it.nixosConfigurations or {}) nixosSystemsValue);
}
