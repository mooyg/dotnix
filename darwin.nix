{ pkgs
, ...
}: {
  users.users.test.home = "/Users/test";
  users.users.test.name = "test";
  services.nix-daemon.enable = true;
  environment = {
    shells = with pkgs; [ zsh ];
    loginShell = pkgs.zsh;
  };
  homebrew = {
    enable = true;
    global.brewfile = true;
    casks = [ "raycast" "warp" "arc" "aldente" "superlist" "scroll-reverser" "discord" "orbstack" "maccy" "clickup" ];
  };
}
