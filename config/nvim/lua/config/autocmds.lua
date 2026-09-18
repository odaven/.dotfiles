-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local window_style_group = vim.api.nvim_create_augroup("window_style", { clear = true })

local function is_normal_window(win)
  if not vim.api.nvim_win_is_valid(win) then
    return false
  end
  local buf = vim.api.nvim_win_get_buf(win)
  return vim.api.nvim_get_option_value("buftype", { buf = buf }) == ""
end

local function set_window_style(win, is_active)
  if not is_normal_window(win) then
    return
  end

  vim.api.nvim_set_option_value("number", true, { win = win })
  vim.api.nvim_set_option_value("relativenumber", is_active, { win = win })
  vim.api.nvim_set_option_value("colorcolumn", is_active and "80" or "", { win = win })
  vim.api.nvim_set_option_value("cursorline", is_active, { win = win })
  vim.api.nvim_set_option_value("winbar", "%t %m", { win = win })
end

local function refresh_window_styles()
  local current_win = vim.api.nvim_get_current_win()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    set_window_style(win, win == current_win)
  end
end

vim.api.nvim_create_autocmd({ "VimEnter", "SessionLoadPost", "WinEnter", "BufEnter", "TermClose" }, {
  group = window_style_group,
  callback = function()
    vim.schedule(refresh_window_styles)
  end,
})

-- Hide cursorline in insert mode
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = window_style_group,
  callback = function()
    if is_normal_window(vim.api.nvim_get_current_win()) and vim.wo.cursorline then
      vim.w.auto_cursorline = true
      vim.wo.cursorline = false
    end
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  group = window_style_group,
  callback = function()
    if is_normal_window(vim.api.nvim_get_current_win()) and vim.w.auto_cursorline then
      vim.wo.cursorline = true
      vim.w.auto_cursorline = nil
    end
  end,
})
