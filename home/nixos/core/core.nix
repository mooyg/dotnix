{pkgs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop 
    discord
  ];
}
