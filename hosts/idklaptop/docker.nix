{...}: {
  virtualisation.docker = {
    enableNvidia = true;
  };

  systemd.enableUnifiedCgroupHierarchy = false;
}
