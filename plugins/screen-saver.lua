return {
  "folke/drop.nvim",
  event = "VeryLazy",
  config = function()
    local month = os.date("*t").month

    local theme = "stars"

    if month == 12 or month == 1 or month == 2 then
      theme = "snow"
    end

    if month == 3 or month == 4 or month == 5 then
      theme = "stars"
    end

    if month == 6 or month == 7 or month == 8 then 
      theme = "summer"
    end

    if month == 9 or month == 10 or month == 11 then
      theme = "leaves"
    end

    require("drop").setup { theme = theme, max = 30 }
  end,
}
