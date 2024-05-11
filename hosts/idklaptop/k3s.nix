{...}: {
  networking.firewall.allowedTCPPorts = [6443];
  networking.firewall.allowedUDPPorts = [8472];

  services.k3s = {
    enable = true;
    role = "agent";
    serverAddr = "https://100.71.18.118:6443";
    token = "K103fb1e22907125bf08a9c9972512562a4ed32662eb98c8c0ea39693cffc3eae65::server:325ac8a11f1e46a00801a9da0c6d4a4a";
  };
}
