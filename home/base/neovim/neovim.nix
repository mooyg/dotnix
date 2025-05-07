{specialArgs, ...}: {
  imports = [
    specialArgs.inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim.enable = true;
  programs.nixvim = {
    globals.mapleader = " ";
    colorschemes.catppuccin.enable = true;
    clipboard.register = "unnamedplus";

    # Options
    opts = {
      number = true;
      relativenumber = true;
    };

    # Keymaps;
    keymaps = [
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<cr>";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<cr>";
      }
      {
        mode = "n";
        key = "o";
        action = "o<esc>";
      }
      {
        mode = "n";
        key = "<leader>fe";
        action = "<cmd>Neotree<cr>";
      }
      {
        mode = "n";
        key = "<leader>xx";
        action = "<cmd>TroubleToggle<cr>";
      }
      {
        mode = "n";
        key = "<leader>fc";
        action = "<cmd>Neotree close<cr>";
      }
      {
        mode = "n";
        key = "<leader>a";
        action.__raw = "function() require'harpoon':list():add() end";
      }
      {
        mode = "n";
        key = "<leader>h";
        action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
      }
    ];

    # Plugins
    plugins = {
      telescope.enable = true;
      noice.enable = true;
      autoclose.enable = true;
      comment.enable = true;
      ts-autotag.enable = true;
      treesitter.enable = true;
      neo-tree = import ./plugins/neo-tree.nix;
      conform-nvim = import ./plugins/conform.nix;
      cmp = import ./plugins/cmp.nix;
      harpoon = import ./plugins/harpoon.nix;
      lsp = import ./plugins/lsp.nix;
      trouble = import ./plugins/trouble.nix;
    };
    extraConfigLua = ''
            local util = require 'lspconfig.util'

            require('lspconfig').ts_ls.setup{
               root_dir = util.root_pattern('.git')(fname)
            }
      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
          group = vim.api.nvim_create_augroup('RestartPrettierd', { clear = true }),
          pattern = '*prettier*',
          callback = function()
              vim.fn.system('prettierd restart')
          end,
      })
    '';
  };
}
