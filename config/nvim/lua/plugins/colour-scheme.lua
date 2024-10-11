return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      dimInactive = true,
      colors = {
        theme = {
          wave = {
            ui = {
              bg = "#000000",
            },
          },
        },
      },
    },
  },
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
      color_overrides = {
        mocha = {
          base = "#000000",
        },
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
