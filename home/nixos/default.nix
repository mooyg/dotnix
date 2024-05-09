{...}: {
  imports = [
    ../base/home.nix
    ../base/neovim/neovim.nix
    ../base/core/shells/shells.nix
    ../base/core/core.nix
    ../base/core/git.nix
    ./core/core.nix
  ];
}
