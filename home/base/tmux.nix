{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [dracula better-mouse-mode];
    prefix = "C-w";
    extraConfig = ''
                  set-option -ga terminal-overrides "alacritty:Tc"
                 setw -g mode-style 'fg=colour1 bg=colour18 bold'

           set-option -g mouse on

      set -sg escape-time 5
    '';
  };
}
