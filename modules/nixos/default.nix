{...}: {
  system.stateVersion = "24.05";
  imports = [./base/networking.nix ./base/nix.nix ./base/ssh.nix ./base/tailscale.nix ./base/packages.nix ./base/users.nix ./base/docker.nix];
}
