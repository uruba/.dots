-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: lazy.nvim
-- url: https://github.com/folke/lazy.nvim 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Sensible defaults
    "tpope/vim-sensible",

    -- Plenary
    "nvim-lua/plenary.nvim",

    -- Indent line
    "lukas-reineke/indent-blankline.nvim",

    -- CSS color
    "ap/vim-css-color",

    -- Symlink follow
    --"aymericbeaumet/vim-symlink",

    -- Git
    "lewis6991/gitsigns.nvim",

    -- Lastplace
    "farmergreg/vim-lastplace",

    -- Autopair
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },

    -- Tagbar
    "preservim/tagbar",

    -- Color scheme
    "navarasu/onedark.nvim",

    -- Surround
    "tpope/vim-surround",

    -- Barbar (tabline bar)
    {
        "romgrk/barbar.nvim",
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- Dashboard (start screen)
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end,
    },
})

