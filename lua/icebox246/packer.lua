vim.cmd "packadd packer.nvim"

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use { 'simrat39/inlay-hints.nvim' }

    use 'Mofiqul/dracula.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'

    use 'junegunn/vim-easy-align'

    use 'ThePrimeagen/vim-be-good'

    use 'habamax/vim-godot'
end)
