{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.71.18.118:6443";
    token = "K10a6f7e08840e302cff9586ba60f50da39681388bc39ddc00efd7dd9f8dd41f047::server:db68f3c23c565d8ed6df645b642f8f53";
  };
}
