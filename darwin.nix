{ pkgs
, ...
}: {
  users.users.mooy.home = "/Users/mooy";
  users.users.mooy.name = "mooy";
  services.nix-daemon.enable = true;
  environment = {
    shells = with pkgs; [ zsh ];
    loginShell = pkgs.zsh;
  };
  homebrew = {
    enable = true;
    global.brewfile = true;
    casks = [ "raycast" "warp" "arc" "aldente" "superlist" "scroll-reverser" "discord" "orbstack" "maccy" "clickup" "betterdisplay" "iterm2" "keyboardcleantool" "visual-studio-code" "purevpn" ];
    brewPrefix = "/opt/homebrew/bin";
  };

  fonts.fontDir.enable = true;
  fonts.fonts = with pkgs; [
    recursive
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
  nix = {
    settings = {
      "extra-experimental-features" = [ "nix-command" "flakes" ];
    };
  };
}

