{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.105.141.63:6443";
    token = "K10a8318d0694adc85dd727c664abb6c26de1d5bd04164de888ffc0c8b33fd1a44a::server:deb571416cd815e1099ac3f94e334776";
  };
}
