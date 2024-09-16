-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- When doing J keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines", silent = true })

-- Quit
vim.keymap.set("n", "<C-Q>", ":q<cr>", { desc = "Quit", silent = true })

-- Use tabs for moving through windows
vim.keymap.set("n", "<Tab>", "<C-w>w", { desc = "Go to Next Window" })
vim.keymap.set("n", "<S-Tab>", "<C-w>W", { desc = "Go to Previous Window" })

-- Resize window using <ctrl+shift> arrow keys
vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Delete the defaults being use for resizing
vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- Centering when moving
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move cursor down 1/2 page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move cursor up 1/2 page" })
vim.keymap.set("n", "n", "nzz", { desc = "Next Search Result" })
vim.keymap.set("n", "N", "Nzz", { desc = "Prev Search Result" })
vim.keymap.set("n", "*", "*zz", { desc = "Next Search Result" })
vim.keymap.set("n", "#", "#zz", { desc = "Prev Search Result" })

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv", { desc = "Move down selected lines", silent = true })
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv", { desc = "Move up selected lines", silent = true })

-- stylua: ignore
-- For some reason, this keymap sometimes dissapears so I set it again here
-- vim.keymap.set("n", "<leader>tr", function() require("neotest").run.run() end, { desc = "Run Nearest" })
