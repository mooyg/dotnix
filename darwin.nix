{ pkgs
, ...
}: {

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
