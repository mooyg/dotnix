{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = ["sway/workspaces"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "network" "battery"];
      };
    };

    style = ''
      * {
        font-family: "Sans";
        font-size: 14px;
      }
      window#waybar {
        background-color: #282c34;
        color: #ffffff;
      }
    '';
  };
}
