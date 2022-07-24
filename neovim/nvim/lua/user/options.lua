local options = {

    cursorline = true,
    errorbells = false,
    expandtab = true,
    foldexpr = "nvim_treesitter#foldexpr()",
    foldlevel = 99, 
    foldmethod = "expr",
    hlsearch = true,
    ignorecase = true,
    incsearch = true,
    mouse = "a",
    number = true,
    relativenumber = true,
    ruler = true,
    scrolloff = 10,
    shiftwidth = 4,
    signcolumn = "yes",
    smartcase = true, 
    smartindent = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    wrap = false

}

for key, value in pairs(options) do
    vim.opt[key] = value
end
