{pkgs, ...}: {
  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    recursive
    (nerdfonts.override {fonts = ["JetBrainsMono"];})
  ];

  users.defaultUserShell = [pkgs.zsh];
}
