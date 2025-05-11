{...}: {
  home.sessionVariables = {
    # EDITOR = "emacs";
  };
  programs.zsh.shellAliases = {
    ls = "eza";
    k = "kubectl";
    cd = "z";
    lg = "lazygit";
  };
}
