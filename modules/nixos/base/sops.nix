{ specialArgs, ... }:
{
  imports = [ specialArgs.inputs.sops-nix.nixosModules.sops ];
  sops.secrets.user_password = {
    sopsFile = ../../../secrets.yaml;
    # TODO: dont hardcode this
    age.keyFile = "/home/mooy/.config/sops/age/keys.txt" ;
  };
}
