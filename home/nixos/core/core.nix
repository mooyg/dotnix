{pkgs, inputs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop 
    discord
  ];
  imports = [ inputs.sops-nix.nixosModules.sops ];
}
