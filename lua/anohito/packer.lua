vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use 'BurntSushi/ripgrep'

    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'famiu/feline.nvim'
    use 'folke/tokyonight.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'theprimeagen/harpoon'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'mfussenegger/nvim-dap'
    use 'simrat39/rust-tools.nvim'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'rust-lang/rust.vim'
    use 'kylechui/nvim-surround'
end)
