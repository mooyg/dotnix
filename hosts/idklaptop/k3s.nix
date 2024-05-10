{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.71.18.118:6443";
    token = "K102acccb0afae98924e8b47de15462332bffc4ad811641ed57a9444cb36968d8b0::server:34c89e66596a05483063da965af216f0";
  };
}
