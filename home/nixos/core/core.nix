{pkgs, specialArgs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop 
    discord
  ];
}
