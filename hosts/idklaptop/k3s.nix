{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.71.18.118:6443";
    # Idk this should matter here since everything is protected but please don't mind.
    tokenFile = "/etc/nixos/k3stoken";
  };
}
