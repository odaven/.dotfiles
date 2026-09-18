return {
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    opts = { transparent_background = false },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = false },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = { transparent = false },
  },

  -- Set the colorscheme to use
  { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight-night" } },
}
