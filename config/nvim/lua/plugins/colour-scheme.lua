return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      dim_inactive = true,
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_float = "#000000"
        colors.gitSigns = {
          add = colors.green,
          change = colors.blue1,
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
