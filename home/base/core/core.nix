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
    duf # Disk Usage/Free Utility - a better 'df' alternative
    gdu # disk usage analyzer(replacement of `du`)
    gping # ping, but with a graph(TUI)
    doggo # DNS client for humans
    lazygit # git tui
  ];
  programs = {
    eza = {
      enable = true;
      git = true;
      icons = "auto";
    };

    bat = {
      enable = true;
      config = {
        pager = "less -FR";
      };
    };
    fzf = {
      enable = true;
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
