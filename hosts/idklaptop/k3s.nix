{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.71.18.118:6443";
    token = "K10eb17d11016e6fc6d1f1034af09c5b2456aafe6b23f28f38f0459ac17b7998c30::server:751bbc2f6e640d7fc6763e50ede6806a";
  };
}
