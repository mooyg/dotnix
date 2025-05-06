{pkgs, specialArgs, ...}: {
  home.packages = with pkgs; [
    iputils
    btop 
    discord
  ];
  imports = [ specialArgs.inputs.sops-nix.nixosModules.sops ];
  sops.secrets.user_password = {
    sopsFile = ../../../secrets.yaml;
  };
}
