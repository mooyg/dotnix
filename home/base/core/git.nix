{...}: {
  programs.git.enable = true;
  programs.git.userEmail = "mooybot@gmail.com";
  programs.git.userName = "mooyg";
  programs.git.ignores = [
    "target"
    ".vscode"
    ".direnv"
    "*~"
    "*.swp"
    "node_modules"
  ];
}
