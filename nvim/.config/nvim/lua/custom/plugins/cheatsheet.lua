return {
    {
        'sudormrfbin/cheatsheet.nvim',
        cmd = "Cheatsheet",
        keys = "<leader>ch",
        dependencies = {
            { 'nvim-telescope/telescope.nvim' },
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
        },
        config = function()
            require("cheatsheet").setup({
                bundled_cheatsheets = {
                    enabled = { "default" },
                },
            })

            vim.keymap.set("n", "<leader>ch", ":Cheatsheet<CR>", {})
        end
    }
}
