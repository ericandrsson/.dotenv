return {
    -- Disable q: and Q in normal mode
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local builtin = require('telescope.builtin')
        local actions = require("telescope.actions")
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-o>"] = actions.select_default + actions.center, -- open in new buffer
                    },
                },
            },
        })

        telescope.load_extension('fzf')

        local keymap = vim.keymap -- for convenience
        keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>pgf", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
        keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
