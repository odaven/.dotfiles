return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>t", "<cmd>Neotree toggle<cr>",                    desc = "NeoTree" },
    { "<leader>T", "<cmd>Neotree filesystem toggle reveal <cr>", desc = "NeoTree" },
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    })
  end,
}
