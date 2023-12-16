return {
  {
    "RRethy/vim-illuminate",
    event = "User AstroFile",
    opts = {},
    config = function(_, opts) require("illuminate").configure(opts) end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = {
      large_file_cutoff = 100,
      min_count_to_highlight = 2,
      integrations = {
        illuminate = true },
      },
  },
}
