return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
    keys = {
      {
        "<leader>r",
        desc = "Refactor",
      },
      {
        "<leader>rr",
        function() require("refactoring").select_refactor() end,
        desc = "Select refactor",
      },
    },
  },
  {
    "gbprod/phpactor.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    enable = vim.bo.filetype == 'php',
    opts = {
      install = {
        check_on_startup = "always",
      },
    },
    keys = {
      {
        "<leader>ra",
        "<Cmd>PhpActor<CR>",
        desc = "Phpactor",
      },
    },
  },
}
