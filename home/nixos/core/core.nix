{pkgs, ...}: {
  home.packages = with pkgs; [
    iputils
  ];
}
