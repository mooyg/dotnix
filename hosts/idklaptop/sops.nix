{ inputs, ... }:
{
  imports = [ inputs.sops-nix.nixosModules.sops ];

  sops.secrets.user_password = {
    sopsFile = ../../../secrets/secrets.yaml;
  };

}
