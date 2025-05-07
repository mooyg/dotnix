{
  enable = true;
  keymaps = {
    silent = true;
    diagnostic = {
      "<leader>k" = "goto_prev";
      "<leader>j" = "goto_next";
    };
    lspBuf = {
      gd = "definition";
      K = "hover";
    };
  };
  servers = {
    ts_ls = {
      enable = true;
    };
    tailwindcss.enable = true;
    jsonls.enable = true;
    nil_ls.enable = true;
    rust_analyzer = true;
    taplo.enable = true;
    gopls = {
      enable = true;
      package = null;
    };
  };
}
