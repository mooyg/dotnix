{pkgs, ...}: {
  # All the default packages I need across all systems
  home.packages = with pkgs; [
    # Misc
    tldr
    cowsay
    # Installing formatter and LSP at root.
    alejandra
    nil
    unzip
    ripgrep
    fastfetch
    nmap
    iputils
    duf # Disk Usage/Free Utility - a better 'df' alternative
    gdu # disk usage analyzer(replacement of `du`)
    gping # ping, but with a graph(TUI)
    doggo # DNS client for humans
  ];
  programs = {
    eza = {
      enable = true;
      git = true;
      icons = true;
    };

    bat = {
      enable = true;
      config = {
        pager = "less -FR";
      };
    };
    fzf = {
      enable = true;
      # https://github.com/catppuccin/fzf
      # catppuccin-mocha
      colors = {
        "bg+" = "#313244";
        "bg" = "#1e1e2e";
        "spinner" = "#f5e0dc";
        "hl" = "#f38ba8";
        "fg" = "#cdd6f4";
        "header" = "#f38ba8";
        "info" = "#cba6f7";
        "pointer" = "#f5e0dc";
        "marker" = "#f5e0dc";
        "fg+" = "#cdd6f4";
        "prompt" = "#cba6f7";
        "hl+" = "#f38ba8";
      };
    };
    zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      enableNushellIntegration = true;
    };
    atuin = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      enableNushellIntegration = true;
    };
  };
}
