{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.105.141.63:6443";
    token = "K109a7f5a82d8d7fdeb5c17054e455f6ea6c39439ae3606fbc0c8000e0da60440f9::server:46fb36b7ad583300aea83c3e11b8371d";
  };
}
