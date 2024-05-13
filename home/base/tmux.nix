{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = dracula;
        extraConfig = ''
                       set -g @dracula-show-battery false
                       set -g @dracula-show-powerline true
                       set -g @dracula-refresh-rate 10
                    set -g @dracula-show-location false
                  set -g @dracula-show-fahrenheit false
          set -g @dracula-show-left-icon session
        '';
      }
      better-mouse-mode
    ];
    prefix = "C-w";
    extraConfig = ''
      set-option -ga terminal-overrides "alacritty:Tc"

      set-option -g mouse on

      set -sg escape-time 5
    '';
  };
}
