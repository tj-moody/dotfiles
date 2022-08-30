--vim.cmd [[packadd packer.nvim]
return require('packer').startup(function(use)
    use { 'wbthomason/packer.nvim' }
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use { "ellisonleao/gruvbox.nvim" }
    use({
        'kyazdani42/nvim-web-devicons',
        config = function ()
            require'nvim-web-devicons'.setup {}
        end
    })
    use { 'williamboman/mason.nvim' }
    use({
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require'nvim-web-devicons'.setup {}
        end
    })
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'neovim/nvim-lspconfig' }
    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup {}
        end
    })
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    })
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup{}
        end
    })
    use({
        'glepnir/dashboard-nvim',
    })
    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup{
                '*';
            }
        end
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'marko-cerovac/material.nvim' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'tiagovla/tokyodark.nvim' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }

    use { 'SirVer/ultisnips',
    requires = {{'honza/vim-snippets', rtp = '.'}},
    config = function()      
      vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
      vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
      vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
      vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
      vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end
}
    use { 'quangnguyen30192/cmp-nvim-ultisnips' }
end)
