{...}: {
  virtualisation.docker = {
    enable = true;

    # use nvidia as the default runtime
    enableNvidia = true;
    extraOptions = "--default-runtime=nvidia";
  };
}
