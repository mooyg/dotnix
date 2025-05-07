{pkgs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop
    discord
    brave
    spotify
  ];
}
