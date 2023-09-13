return {
    "gmr458/dark_modern.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("dark_modern").setup({
            cursorline = true,
            transparent_background = false,
            nvim_tree_darker = true,
        })
        vim.cmd.colorscheme("dark_modern")
    end,
}
