{...}: {
  imports = [
    ../base/home.nix
    ../base/tmux.nix
    ../base/neovim/neovim.nix
    ../base/core/shells/shells.nix
    ../base/core/core.nix
    ../base/core/git.nix
    ../base/core/zsh.nix
    ../base/core/starship.nix
    ../base/alacritty/alacritty.nix
    ./core/core.nix
  ];
}
