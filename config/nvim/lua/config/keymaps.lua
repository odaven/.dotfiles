-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- When doing J keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines", silent = true })

Snacks.toggle
  .option("scrolloff", {
    off = 4,
    on = 999,
    name = "scrolloff=999",
    get = function()
      return vim.o.scrolloff == 999
    end,
  })
  :map("<leader>u9")
