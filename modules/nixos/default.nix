{...}: {
  system.stateVersion = "24.05";
  imports = [./base/networking.nix ./base/nix.nix ./base/ssh.nix ./base/tailscale.nix ./base/packages.nix ./base/docker.nix ./base/users.nix];

  nixpkgs.config.allowUnfree = true;
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };
}
