{pkgs, ...}: {
  home.packages = with pkgs; [
    iputils
    htop
  ];
}
