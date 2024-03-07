{
  enable = true;
  formattersByFt = {
    javascript = [ [ "prettierd" "prettier" ] ];
    typescript = [ [ "prettierd" "prettier" ] ];
    typescript-react = [ [ "prettierd" "prettier" ] ];
    javascript-react = [ [ "prettierd" "prettier" ] ];
    svelte = [ [ "prettierd" "prettier" ] ];
  };
  formatOnSave = {
    lspFallback = true;
    timeoutMs = 500;
  };
}
