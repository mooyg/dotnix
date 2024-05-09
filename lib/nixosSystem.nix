{
  inputs,
  system,
  nixos-modules,
  home-modules,
  myvars,
  ...
}: let
  inherit (inputs) nixpkgs home-manager;
in
  nixpkgs.lib.nixosSystem {
    inherit system;
    modules =
      nixos-modules
      ++ [
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;

          home-manager.extraSpecialArgs = {inherit inputs myvars;};
          home-manager.users."${myvars.username}".imports = home-modules;
        }
      ];
  }
