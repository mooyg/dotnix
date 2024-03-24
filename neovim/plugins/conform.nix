{
  enable = true;
  formattersByFt = {
    javascript = [ [ "prettierd" "prettier" ] ];
    typescript = [ [ "prettierd" "prettier" ] ];
    typescript-react = [ [ "prettierd" "prettier" ] ];
    javascript-react = [ [ "prettierd" "prettier" ] ];
    svelte = [ [ "prettierd" "prettier" ] ];
    nix = [ [ "alejandra" "nil_ls" ] ];
    css = [ "prettierd" ];
    yaml = [ "yamlfmt" ];
    "*" = [ [ "prettierd" ] ];
  };
  formatOnSave = {
    lspFallback = true;
    timeoutMs = 1500;
  };
}
