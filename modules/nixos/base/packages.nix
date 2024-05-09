{pkgs, ...}: {
  environment.systemPackages = with pkgs; [docker runc cifs-utils lshw];
}
