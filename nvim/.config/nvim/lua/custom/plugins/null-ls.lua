return {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    event = { "BufRead", "BufNewFile"},
    opts = function()
        return require "custom.plugins.configs.null-ls-config"
    end
}
