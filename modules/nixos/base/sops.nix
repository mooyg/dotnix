{ specialArgs, ... }:
{

  imports = [ specialArgs.inputs.sops-nix.nixosModules.sops ];
  sops = {
    # TODO: dont hardcode this
    age.keyFile = "/home/mooy/.config/sops/age/keys.txt";
    secrets.user_password = {
      sopsFile = ../../../secrets.yaml;
      neededForUsers = true;
    };
  };
}
