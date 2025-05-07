{...}: {
  #  Adding darwin and nix stuff stuff to path
  home.sessionPath = ["/run/current-system/sw/bin"];
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
