{...}: {
  imports = [
    ./core/core.nix
    ../base/home.nix
    ../base/tmux.nix
    ../base/neovim/neovim.nix
    ../base/core/shells/shells.nix
    ../base/core/core.nix
    ../base/core/direnv.nix
    ../base/core/git.nix
    ../base/core/starship.nix
    ../base/core/zsh.nix
    ../base/alacritty/alacritty.nix
  ];
}
