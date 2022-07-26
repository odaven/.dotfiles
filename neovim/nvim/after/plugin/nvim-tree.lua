local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>E", ":NvimTreeFindFile<CR>", opts)

require("nvim-tree").setup({

    view = {
        mappings = {
            custom_only = true,
            list = {
                -- Opening help
                { key = 'g?', action = 'toggle_help' },

                -- Opening the file
                { key = {'l', '<CR>', '<2-LeftMouse>' }, action = 'edit' },
                { key = '<C-s>', action = 'split' },
                { key = '<C-v>', action = 'vsplit' },
                { key = '<C-t>', action = 'tabnew' },
                { key = 'v', action = 'preview' },

                -- Moving in the tree
                { key = 'h', action = 'close_node' },
                { key = "K", action = "parent_node" },
                { key = '<', action = 'first_sibling' },
                { key = '>', action = 'last_sibling' },

                -- Moving in the directories
                { key = 'L', action = 'cd' },
                { key = 'H', action = 'dir_up' },

                -- Actions for files
                { key = 'c', action = 'create' },
                { key = 'd', action = 'cut' },
                { key = 'y', action = 'copy' },
                { key = 'p', action = 'paste' },
                { key = 'd', action = 'remove' },
                { key = 'r', action = 'rename' },
                { key = "<C-r>", action = "full_rename" },

                { key = 'm', action = 'toggle_mark' },
                { key = "bmv", action = "bulk_move" },
               
                -- Getting file's name
                { key = 'gyn', action = 'copy_name' },
                { key = 'gyp', action = 'copy_path' },
                { key = 'gya', action = 'copy_absolute_path' },

                -- All or nothing
                { key = 'E', action = 'expand_all' },
                { key = '-', action = 'collapse_all' },
                
                -- Others
                { key = 'R', action = 'refresh' },
                { key = 'f', action = 'live_filter' },
                { key = 's', action = 'system_open' },
                { key = 'i', action = 'toggle_file_info' },
            }
        }
    }
})

