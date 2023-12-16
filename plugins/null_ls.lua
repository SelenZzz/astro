return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    local formatting = null_ls.builtins.formatting
    local code_actions = null_ls.builtins.code_actions
    local diagnostics = null_ls.builtins.diagnostics


    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      code_actions.eslint_d,
      diagnostics.eslint_d,
      formatting.eslint_d,

      formatting.prettier,

      -- diagnostics.php,
      -- diagnostics.phpcs,
      formatting.phpcsfixer,

      formatting.stylua,
    }

    config.debug = true
    return config 
  end,
}
