return {
  "ray-x/sad.nvim",
  dependencies = { "ray-x/guihua.lua", build = "cd lua/fzy && make" },
  opts = {},
  -- event = "User AstroFile",
  -- cmd = { "Find and Replace" },
  keys = {
    {
      "<leader>fR",
      "<Cmd>Sad<CR>",
      desc = "Find and replace",
    },
  },
}
