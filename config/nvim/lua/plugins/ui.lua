return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Go to Left Window" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Go to Lower Window" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Go to Upper Window" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Go to Right Window" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Go to Previous Window" },
    },
  },
  {
    "folke/noice.nvim",
    opts = { presets = { lsp_doc_border = true } },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { preset = { header = "" } },
      picker = { previewers = { git = { builtin = false } } },
    },
  },
  {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = false,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      watch_for_changes = true,
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".git"
        end,
      },
      float = {
        padding = 2,
        max_width = 0.7,
        max_height = 0.7,
      },
      keymaps = {
        ["q"] = "actions.close",
        ["<Esc>"] = "actions.close",
        ["<C-h>"] = false,
        ["<C-l>"] = false,
        ["<C-r>"] = "actions.refresh",
        ["<C-s>"] = false,
        ["<C-t>"] = false,
        ["<C-v>"] = { "actions.select", opts = { vertical = true } },
        ["<leader>p"] = "actions.preview",
        ["<leader>y"] = "actions.yank_entry",
      },
    },
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
    keys = {
      { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil" },
    },
  },
}
