{pkgs, ...}: {
  imports = [./animations-def.nix ./waybar.nix ./binds.nix ./hypridle.nix];
  home.packages = with pkgs; [swappy swaynotificationcenter wlogout libnotify pavucontrol];
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
      exec-once = [
        "killall -q waybar;sleep .5 && waybar"
      ];
      input = {
        repeat_delay = 300;

        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          scroll_factor = 0.8;
        };
      };
    };
  };
}
