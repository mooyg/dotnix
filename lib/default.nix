{lib, ...}: {
  macosSystem = import ./darwinSystem.nix;
  uimport = import ./uimport.nix {inherit lib;};
}
