local utils = require "astronvim.utils"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { 
          "php", 
          "css",
          "html",
        })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) 
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { 
        "intelephense", 
        "phpactor", 
        "cssls", 
        "emmet_ls",
      }) 
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts) 
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {
        "php",
      }) 
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts) 
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "phpcs",
        "phpcsfixer",
        "eslint_d",
        "prettier",
        "stylua",
      })
    end,
  },
}
