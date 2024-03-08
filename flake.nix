{
  description = "Home Manager configuration of root";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
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
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs@ { nixpkgs, home-manager, flake-utils, ... }:

    let
      pkgsForSystem = system: import nixpkgs
        {
          inherit system;
        };
      mkHomeConfiguration = args: home-manager.lib.homeManagerConfiguration rec {
        modules = [ ./home.nix ];
        extraSpecialArgs = { inherit inputs; };
        pkgs = let inherit args; in if builtins.hasAttr "system" args then pkgsForSystem args.system else pkgsForSystem "x86_64-linux";
      };
    in
    {
      homeConfigurations.root = mkHomeConfiguration { };

      homeConfigurations.mooy = mkHomeConfiguration { system = "aarch64-darwin"; };
    };
}
