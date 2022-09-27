local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'
    
    use 'tpope/vim-surround'

    use 'ggandor/lightspeed.nvim'

    use 'numToStr/Comment.nvim'

    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    

    use 'nvim-lualine/lualine.nvim'
    

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    

    use 'gruvbox-community/gruvbox'


    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    use 'lukas-reineke/indent-blankline.nvim'

    use 'christoomey/vim-tmux-navigator'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
