local utils = require "astronvim.utils"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "php", "css", "html" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "phpactor", "cssls", "emmet_ls" }) end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "php") end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts) 
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {
        "php-cs-fixer", 
        "stylua",
      })
      
      local nls = require("null-ls")
      opts.sources = {
        nls.builtins.formatting.phpcsfixer.with({
          condition = function(utils) return utils.root_has_file('.php-cs-fixer.dist.php') end,
          extra_args = function() 
            return { '--quiet', '--no-interaction', '--allow-risky', '--config=.php-cs-fixer.dist.php', 'fix', '$FILENAME' }
          end,
        }),
        nls.builtins.formatting.stylua,
      }
    end,
  },
}
