-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme


-- Autocommand that reloads neovim whenever you save the packer.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerCompile
    augroup end
]]

-- Install plugins
require('packer').startup(function(use)
    -- Add you plugins here:
    use 'wbthomason/packer.nvim' -- packer can manage itself

     -- Sensible defaults
    use 'tpope/vim-sensible'

    -- File explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Indent line
    use 'lukas-reineke/indent-blankline.nvim'

    -- CSS color
    use 'ap/vim-css-color'

    -- Symlink follow
    use 'aymericbeaumet/vim-symlink'

    -- Git
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- Lastplace
    use 'farmergreg/vim-lastplace'

    -- Autopair
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Tag viewer
    use 'preservim/tagbar'

    -- Treesitter interface
    use 'nvim-treesitter/nvim-treesitter'

    -- Color schemes
    use 'navarasu/onedark.nvim'
    use { 'kyoz/purify', rtp = 'vim' }

    -- Surround
    use 'tpope/vim-surround'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'

    -- Autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'saadparwaiz1/cmp_luasnip',
        },
    }

    -- Statusline
    use {
        'famiu/feline.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    -- git labels
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Dashboard (start screen)
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

