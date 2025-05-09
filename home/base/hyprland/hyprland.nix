{pkgs, ...}: {
  imports = [./animations-def.nix ./waybar.nix];
  home.packages = with pkgs; [swappy];
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };
    xwayland = {
      enable = true;
    };
    settings = {
      "$terminal" = "alacritty";
    };
  };
}
