function git_root()
    return string.gsub(vim.fn.system("git rev-parse --show-toplevel"), "\n", "")
end

function get_opts()
    local opts = {}

    local root = git_root()
    if vim.v.shell_error == 0 then
        opts.cwd = root
    end

    return opts
end

-- Telescope
return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {
            "<leader>fp",
            function()
                require("telescope.builtin").find_files(get_opts())
            end,
        },
        {
            "<leader>ff",
            function()
                require('telescope.builtin').live_grep(get_opts())
            end,
        },
        {
            "<leader>fb",
            function()
                require('telescope.builtin').buffers(get_opts())
            end,
        },
        {
            "<leader>fh",
            function()
                require('telescope.builtin').help_tags(get_opts())
            end,
        },
    },
}
