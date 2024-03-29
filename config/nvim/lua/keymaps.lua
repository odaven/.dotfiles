local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Saving and quitting
keymap("n", "<C-S>", "<ESC>:w<CR>", opts)
keymap("i", "<C-S>", "<ESC>:w<CR>", opts)
keymap("n", "<C-Q>", "<ESC>:q<CR>", opts)
keymap("i", "<C-Q>", "<ESC>:q<CR>", opts)

------------------ Normal ------------------

keymap("n", "<leader>y", '"*y', opts)
keymap("v", "<leader>y", '"*y', opts)
keymap("n", "<leader>Y", '"*Y', opts)
keymap("n", "<leader>p", '"*p', opts)
keymap("n", "<leader>P", '"*P', opts)

-- When doing J keep the cursor in place
keymap("n", "J", "mzJ`z", opts)

-- Adding lines abover and below
keymap("n", "<leader>O", "mzO<esc>`z", opts)
keymap("n", "<leader>o", "mzo<esc>`z", opts)

-- Better window navigation
keymap("n", "<Tab>", "<C-w>w", opts) -- Use Tab to move between open windows
-- keymap("n", "<S-Tab>", "<C-w>w", opts) This one works so it could be useful in the future

keymap("n", "]b", ":bnext<CR>", opts)
keymap("n", "[b", ":bprev<CR>", opts)

-- Changing editors sizes
keymap("n", "<c-s-up>", ":resize -2<CR>", opts)
keymap("n", "<c-s-down>", ":resize +2<CR>", opts)
keymap("n", "<c-s-left>", ":vertical resize -2<CR>", opts)
keymap("n", "<c-s-right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

------------------ Insert ------------------

------------------ Visual ------------------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":move '>+1<CR>gv=gv", opts)
keymap("v", "K", ":move '<-2<CR>gv=gv", opts)
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

------------------ Visual Block ------------------
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv=gv", opts)
keymap("x", "K", ":move '<-2<CR>gv=gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

------------------ Terminal ------------------
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
