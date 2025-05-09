{lib, ...}: let
  themes = fetchGit {
    url = "https://github.com/alacritty/alacritty-theme";
    rev = "5f906a45b810458cbd387d648f50d4ef051f7d2j";
  };
in {
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    import = [./theme.toml];
    env = {
      TERM = "alacritty";
    };
    window.dimensions = {
      columns = 0;
      lines = 0;
    };
    font = {
      bold = {
        family = lib.mkForce "JetBrainsMono Nerd Font Mono";
        style = lib.mkForce "Bold";
      };
      normal = {
        family = lib.mkForce "JetBrainsMono Nerd Font Mono";
        style = lib.mkForce "Bold";
      };
      size = lib.mkForce 18;
    };
  };
}
