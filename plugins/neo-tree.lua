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
      }
    }
  },
}
