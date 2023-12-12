return {
  -- silly drops
  "folke/drop.nvim",
  event = "VeryLazy",
  config = function()
    math.randomseed(os.time())
    -- local theme = ({ "snow", "leaves" })[math.random(1, 3)]
    require("drop").setup { theme = 'snow', max = 30 }
  end,
}
