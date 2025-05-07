{...}: {
  virtualisation.docker = {
    enable = true;

    extraOptions = "--default-runtime=nvidia";
  };
}
