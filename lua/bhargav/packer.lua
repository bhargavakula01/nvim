-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- telescope.lua (for finding files)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- rose-pine.lua (colorscheme) 
    -- use {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         vim.cmd("colorscheme rose-pine")
    --
    --     end
    -- }
    use {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.cmd("colorscheme catppuccin")

        end
    }


    -- nvim v0.7.2
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
    use({
        "NTBBloodbath/galaxyline.nvim",
        -- your statusline
        config = function()
            require("galaxyline.themes.eviline")
        end,
        -- some optional icons
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        "akinsho/toggleterm.nvim",
        tag = "*", -- or a specific version like "v2.*"
        config = function()
            require("toggleterm").setup {
                -- optional settings
                direction = "float",
                float_opts = {
                    border = "curved",
                },
                -- other options like open_mapping, shell, etc.
            }
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
    -- use("nvim-treesitter/playground")
    use("nvim-telescope/telescope-project.nvim")
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('VonHeikemen/lsp-zero.nvim')
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-nvim-lua')
    use('saadparwaiz1/cmp_luasnip')
    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')
    use('williamboman/mason.nvim', {run = ":MasonUpdate"})
    use('williamboman/mason-lspconfig.nvim')


end)
