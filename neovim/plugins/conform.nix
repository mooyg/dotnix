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
  };
  formatOnSave = {
    lspFallback = true;
    timeoutMs = 1500;
  };
}
