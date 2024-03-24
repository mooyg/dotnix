{...}: {
  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;
  programs.starship.settings = {
    add_newline = true;
    character = {
      success_symbol = "➜";
      error_symbol = "➜";
    };
  };
}
