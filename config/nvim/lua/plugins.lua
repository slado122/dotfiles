local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
    use 'gruvbox-community/gruvbox'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'tpope/vim-fugitive'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'tpope/vim-commentary'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'neovim/nvim-lspconfig'
    use 'vimwiki/vimwiki'
    use 'dhruvasagar/vim-table-mode'
    use 'szw/vim-maximizer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use {'psf/black', branch = 'stable'}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use 'vim-test/vim-test'
    use 'folke/zen-mode.nvim'
    use 'mhinz/vim-startify'
    use 'windwp/nvim-autopairs'
	use 'simrat39/rust-tools.nvim'
    use {
      'phaazon/hop.nvim',
      branch = 'v1',
    }
	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-dap-python'
	use 'nvim-telescope/telescope-dap.nvim'

    if packer_bootstrap then require('packer').sync() end
end)
