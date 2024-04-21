{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [catppuccin weather];
    prefix = "C-w";
    extraConfig = ''
      set-option -ga terminal-overrides "alacritty:Tc"
    '';
  };
}
