local ok, _ = pcall(vim.cmd, 'colorscheme gruvbox')
if not ok then
    vim.cmd 'colorscheme default'
end

