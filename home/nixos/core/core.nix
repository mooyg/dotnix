{pkgs, specialArgs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop 
    discord
  ];
  imports = [ specialArgs.inputs.sops-nix.nixosModules.sops ];
}
