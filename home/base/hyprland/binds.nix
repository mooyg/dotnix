{...}: {
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_repeat_rate = 30;
      kb_repeat_delay = 250;
    };
    "$mod" = "ALT";
    bind = [
      "$modifier,Return,exec,alacritty"
      "$modifier,Space,exec,rofi-launcher"
      "$modifier, h, movefocus, l"
      "$modifier, l, movefocus, r"
      "$modifier, j, movefocus, d"
      "$modifier, k, movefocus, u"
      "$modifier,F,fullscreen,"
      "$modifier SHIFT, h, movewindow, l"
      "$modifier SHIFT, l, movewindow, r"
      "$modifier SHIFT, j, movewindow, d"
      "$modifier SHIFT, k, movewindow, u"
      "$modifier SHIFT, Q, exec, firefox"
      "$modifier SHIFT, D, exec, discord"
      "$modifier,1,workspace,1"
      "$modifier,2,workspace,2"
      "$modifier,3,workspace,3"
      "$modifier,4,workspace,4"
      "$modifier,4,workspace,4"
      "ALT,Tab,cyclenext"
      "ALT,Tab,bringactivetotop"
      "$modifier,Q,killactive,"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}
