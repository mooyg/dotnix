{pkgs, ...}: {
  homebrew = {
    enable = true;
    global.brewfile = true;
    casks = ["raycast" "warp" "arc" "aldente" "superlist" "scroll-reverser" "discord" "orbstack" "maccy" "clickup" "betterdisplay" "keyboardcleantool" "visual-studio-code" "purevpn" "spotify" "gitkraken" "stats" "alacritty"];
    brewPrefix = "/opt/homebrew/bin";
  };

  environment = {
    shells = with pkgs; [zsh];
    loginShell = pkgs.zsh;
  };
}
