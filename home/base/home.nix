{myvars, ...}: {
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.username = myvars.username;

  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
}
