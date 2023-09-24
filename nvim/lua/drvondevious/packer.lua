vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax highlighting
    use({
        'nvim-treesitter/nvim-treesitter',
        { run = 'TSUpdate' }
    })

    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    }

    use('mbbill/undotree')
    use 'simrat39/rust-tools.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use 'lewis6991/gitsigns.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use "lukas-reineke/indent-blankline.nvim"
    use 'petertriho/nvim-scrollbar'
    use 'nvim-tree/nvim-web-devicons'
    use 'github/copilot.vim'

    use {
        'romgrk/barbar.nvim',
        requires = { {'nvim-tree/nvim-web-devicons'} },
    }

    use {
        'ggandor/leap.nvim',
        config = function() require('leap').add_default_mappings() end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {"akinsho/toggleterm.nvim", tag = '*'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { {'nvim-tree/nvim-web-devicons'} },
        config = function() require('lualine').setup {
            theme = 'tokyonight'
        } end
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'folke/trouble.nvim',
        requires = { {'nvim-tree/nvim-web-devicons'} },
    }

    -- theme
    use {
        'folke/tokyonight.nvim',
        config = function()
            vim.cmd[[colorscheme tokyonight-night]]
        end
    }
end)
