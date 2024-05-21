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
  formatOnSave = {
    lspFallback = true;
    timeoutMs = 1500;
  };
}
