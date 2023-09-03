-- Telescope
return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {
            "<leader>fp",
            function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        },
        {
            "<leader>ff",
            function() require('telescope.builtin').live_grep() end,
        },
        {
            "<leader>fb",
            function() require('telescope.builtin').buffers() end,
        },
        {
            "<leader>fh",
            function() require('telescope.builtin').help_tags() end,
        },
    },
}
