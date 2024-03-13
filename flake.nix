{
  description = "Home Manager configuration of root";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
      # url = "github:nix-community/nixvim/nixos-23.05";

      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@ { nixpkgs, home-manager, darwin, ... }:
    let
      username = "root";
      homeDirectory = "/root";
      pkgsForSystem = system: import nixpkgs
        {
          inherit system;
        };
      mkHomeConfiguration = args: home-manager.lib.homeManagerConfiguration ({
        extraSpecialArgs = { inherit inputs username homeDirectory; };
        pkgs = let inherit args; in if builtins.hasAttr "system" args then pkgsForSystem args.system else pkgsForSystem "x86_64-linux";
      } // args);
    in
    {
      homeConfigurations.root = mkHomeConfiguration {
        modules = [ ./home.nix ];
      };
      darwinConfigurations."idk-mac" = darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        modules = [
          ./darwin.nix
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.mooy = import ./home.nix;
              extraSpecialArgs = { inherit inputs username homeDirectory; };
            };
          }
        ];
      };
    };
}
