return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      dim_inactive = {
        enabled = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- day, moon, night, storm
      dim_inactive = true,
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_float = "#000000"
        colors.git = {
          add = colors.green,
          change = colors.orange,
          delete = colors.red1,
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
