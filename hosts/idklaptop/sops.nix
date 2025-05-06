{ ... }:
{
  sops.secrets.user_password = {
    sopsFile = ../../../secrets/secrets.yaml;
  };
}
