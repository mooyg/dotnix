{mylib, ...}: {
  imports =
    mylib.umport {
      path = ../base/.;
      exclude = [../base/neovim/plugins];
    }
    ++ mylib.umport {
      path = ./.;
      exclude = [./home.nix];
    };
}
