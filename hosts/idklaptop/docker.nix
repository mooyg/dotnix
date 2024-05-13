{...}: {
  virtualisation.oci-containers.backend = "docker";
  virtualisation.docker = {
    enableNvidia = true;
  };
  virtualisation.containers.cdi.dynamic.nvidia.enable = true;
}
