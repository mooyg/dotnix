{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.83.190.44:6443";
    token = "K10100f6c89aa242465d1222361cf24202aff6797076b04d3c9d64b0a06215bba1d::server:f8d9f7ea4ea679e60aa275247d9fe0e8";
  };
}
