{pkgs, ...}: {
  environment.systemPackages = with pkgs; [docker wl-clipboard];
}
