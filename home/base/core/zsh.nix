{pkgs, ...}: {
  programs.zsh.enable = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.autosuggestion.enable = true;
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
    "zoxide"
  ];

  programs.zsh.plugins = [
    {
      name = "vi-mode";
      src = pkgs.zsh-vi-mode;

      file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
    }
  ];

  programs.zsh.initExtra = "
  ";
}
