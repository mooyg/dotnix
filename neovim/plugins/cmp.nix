{
  enable = true;
  autoEnableSources = true;
  settings.mapping = {
    "<C-n>" = "cmp.mapping.select_next_item()";
    "<C-p>" = "cmp.mapping.select_prev_item()";
    "<C-j>" = "cmp.mapping.select_next_item()";
    "<C-k>" = "cmp.mapping.select_prev_item()";
    "<C-d>" = "cmp.mapping.scroll_docs(-4)";
    "<C-f>" = "cmp.mapping.scroll_docs(4)";
    "<C-Space>" = "cmp.mapping.complete()";
    "<C-e>" = "cmp.mapping.close()";
    "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
    "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
  };
  settings.sources = [
    {
      name = "nvim_lsp";
    }
  ];
  settings.snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
  settings.extraConfigLua = "
cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      vim_item.abbr = ' ' .. vim_item.abbr
      vim_item.menu = (vim_item.menu or '') .. ' '
      return vim_item
    end
  }

window = {
        documentation = cmp.config.window.bordered({
            winhighlight = \"Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None\",
        }),
    },
}";
}
