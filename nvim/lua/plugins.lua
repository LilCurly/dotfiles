require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-omni'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'sbdchd/neoformat'
    use 'simrat39/symbols-outline.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kdheepak/lazygit.nvim'
    use 'folke/lsp-colors.nvim'
    use {
        'romgrk/barbar.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        as = "lsp_lines",
        config = function()
            require("lsp_lines").setup {}
        end,
    })
    use {
        'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
    }
    use 'RRethy/vim-illuminate'
    use 'mfussenegger/nvim-lint'
    use 'gruvbox-community/gruvbox'
end)

vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_hls_cursor = 'bright_green'
vim.g.gruvbox_hls_highlight = 'bright_green'

vim.cmd('colorscheme gruvbox')
