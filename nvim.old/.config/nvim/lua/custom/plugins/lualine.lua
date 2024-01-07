return {
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        requires = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require "custom.plugins.configs.lualine-config"
        end
    }
}
