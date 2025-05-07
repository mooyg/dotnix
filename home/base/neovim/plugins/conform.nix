{
  enable = true;
  formattersByFt = {
    javascript = [["prettierd"]];
    typescript = [["prettierd"]];
    typescriptreact = ["prettierd"];
    javascriptreact = ["prettierd"];
    svelte = [["prettierd"]];
    nix = [["alejandra"]];
    css = ["prettierd"];
    yaml = ["yamlfmt"];
    rust = ["rustfmt"];
    vue = ["prettierd"];
    go = ["gofmt"];
    astro = ["prettierd"];
  };

  settings.format_on_save = {
    lsp_fallback = true;
    timeout_ms = 1500;
  };
}
