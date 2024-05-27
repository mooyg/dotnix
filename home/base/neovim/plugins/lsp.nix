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
  extraConfigLua = ''
    local util = require 'lspconfig.util'

    require('lspconfig').tsserver.setup{
       root_dir = util.root_pattern('.git')(fname)
    }
  '';
  servers = {
    tsserver = {
      enable = true;
    };
    tailwindcss.enable = true;
    prismals.enable = true;
    svelte.enable = true;
    jsonls.enable = true;
    nil_ls.enable = true;
    rust-analyzer.enable = true;
    taplo.enable = true;
    volar.enable = true;
    marksman.enable = true;
    gopls = {
      enable = true;
      package = null;
    };
  };
}
