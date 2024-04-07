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
    tsserver.enable = true;
    tailwindcss.enable = true;
    prismals.enable = true;
    svelte.enable = true;
    jsonls.enable = true;
    nil_ls.enable = true;
    yamlls.enable = true;
    rust-analyzer.enable = true;
  };
}
