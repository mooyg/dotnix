{pkgs, ...}: {
  homebrew = {
    enable = true;
    global.brewfile = true;
    casks = ["raycast" "arc" "aldente" "superlist" "scroll-reverser" "discord" "orbstack" "maccy" "clickup" "betterdisplay" "keyboardcleantool" "visual-studio-code" "spotify" "gitkraken" "stats" "alacritty" "sourcetree"];
    brewPrefix = "/opt/homebrew/bin";
  };

  environment = {
    shells = with pkgs; [zsh];
    loginShell = pkgs.zsh;
  };
}
