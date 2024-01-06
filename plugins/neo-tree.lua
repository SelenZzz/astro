return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = {
    hide_root_node = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = true,
        hide_gitignored = true,
      },
      follow_current_file = {
        enabled = false,
      },
    },
  },
  keys = {
    {
      "<leader>bf",
      "<Cmd>:Neotree focus reveal_force_cwd<CR>",
      desc = "Focus explorer location",
    },
  },
}
