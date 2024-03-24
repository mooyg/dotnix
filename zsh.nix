{...}: {
  programs.zsh.enable = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.enableAutosuggestions = true;
  programs.zsh.sessionVariables = {
    ZSH = "$HOME/.oh-my-zsh";
    ZSH_THEME = "simple";
  };

  programs.zsh.oh-my-zsh.plugins = [
    "git"
    "docker"
    "npm"
    "yarn"
    "rust"
    "direnv"
  ];

  programs.zsh.initExtra = "
    eval \"$(fnm env --use-on-cd)\"
  ";
}
