{
  enable = true;
  formattersByFt = {
    javascript = [["prettierd"]];
    typescript = [["prettierd"]];
    typescript-react = [["prettierd"]];
    javascript-react = [["prettierd"]];
    svelte = [["prettierd"]];
    nix = [["alejandra"]];
    css = ["prettierd"];
    yaml = ["yamlfmt"];
  };
  formatOnSave = {
    lspFallback = true;
    timeoutMs = 1500;
  };
}
