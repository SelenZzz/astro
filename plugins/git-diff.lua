return {
  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    cmd = { "DiffviewOpen" },
    keys = {
      {
        "<leader>gD",
        "<Cmd>DiffviewOpen<CR>",
        desc = "Open Diffview",
      },
    },
  },
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } },
  },
}
