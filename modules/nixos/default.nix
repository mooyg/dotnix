{...}: {
  system.stateVersion = "24.05";

  time.timeZone = "Asia/Kolkata";
  imports = [
    ./base/hyprland.nix
    ./base/nix.nix
    ./base/packages.nix
    ./base/users.nix
    ./base/docker.nix
    ./base/fonts.nix
  ];
}
