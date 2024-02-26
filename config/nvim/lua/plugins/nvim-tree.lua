return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>t", ":NvimTreeToggle<CR>",   desc = "NvimTree" },
    { "<leader>T", ":NvimTreeFindFile<CR>", desc = "NvimTree" },
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        git_ignored = false,
      }
    })
  end,
}
