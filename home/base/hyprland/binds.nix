{...}: {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "ALT";
    bind = [
      "$modifier,Return,exec,alacritty"
      "$modifier,Space,exec,rofi -show"
      "$modifier, h, movefocus, l"
      "$modifier, l, movefocus, r"
      "$modifier, j, movefocus, d"
      "$modifier, k, movefocus, u"
      "$modifier,F,fullscreen,"
      "$modifier SHIFT, h, movewindow, l"
      "$modifier SHIFT, l, movewindow, r"
      "$modifier SHIFT, j, movewindow, d"
      "$modifier SHIFT, k, movewindow, u"
      "$modifier SHIFT, Q, exec, brave"
      "$modifier SHIFT, D, exec, discord"
      "$modifier,1,workspace,1"
      "$modifier,2,workspace,2"
      "$modifier,3,workspace,3"
      "$modifier,4,workspace,4"
      "$modifier,4,workspace,4"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"
      "$modifier,Q,killactive,"
      "$modifier SHIFT, 1, movetoworkspace, 1"
      "$modifier SHIFT, 2, movetoworkspace, 2"
      "$modifier SHIFT, 3, movetoworkspace, 3"
      "$modifier SHIFT, 4, movetoworkspace, 4"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
