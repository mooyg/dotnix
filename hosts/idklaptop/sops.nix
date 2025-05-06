{ specialArgs, ... }:
{
  imports = [ specialArgs.inputs.sops-nix.nixosModules.sops ];
  sops.secrets.user_password = {
    sopsFile = ../../secrets.yaml;
  };
}
