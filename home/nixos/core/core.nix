{pkgs, specialArgs, ...}: {


  programs.go = {
    enable = true;
  };

  home.packages = with pkgs; [
    iputils
    btop 
    discord
    brave
  ];
}
