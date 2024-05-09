{
  darwin-modules,
  home-modules ? [],
  inputs,
  myvars,
  system,
  ...
}: let
  inherit (inputs) nixpkgs home-manager darwin;
in
  darwin.lib.darwinSystem {
    inherit system;
    modules =
      darwin-modules
      ++ [
        ({lib, ...}: {
          nixpkgs.pkgs = import nixpkgs {inherit system;};
        })
      ]
      ++ [
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {inherit inputs;};
          home-manager.users."${myvars.username}".imports = home-modules;
        }
      ];
  }
