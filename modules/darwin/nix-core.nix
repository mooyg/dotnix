{lib, ...}: {
  nix = {
    settings = {
      "extra-experimental-features" = ["nix-command" "flakes"];
    };
  };

  services.nix-daemon.enable = true;
}
