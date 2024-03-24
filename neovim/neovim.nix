{specialArgs, ...}: {
  imports = [
    specialArgs.inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim.enable = true;
  programs.nixvim = {
    globals.mapleader = " ";
    colorschemes.dracula.enable = true;
    clipboard.register = "unnamedplus";

    # Options
    options = {
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
    ];
    # Plugins
    plugins = {
      telescope.enable = true;
      noice.enable = true;
      luasnip.enable = true;
      autoclose.enable = true;
      comment-nvim.enable = true;
      ts-autotag.enable = true;
      neo-tree.enable = true;
      treesitter.enable = true;
      barbecue.enable = true;
      presence-nvim.enable = true;
      vim-matchup = import ./plugins/vim-matchup.nix;
      conform-nvim = import ./plugins/conform.nix;
      cmp = import ./plugins/cmp.nix;
      harpoon = import ./plugins/harpoon.nix;
      lsp = import ./plugins/lsp.nix;
      trouble = import ./plugins/trouble.nix;
    };
  };
}
