local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
    lazy = false,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
}

function M.config()
	local wk = require("which-key")
	local keymap = vim.keymap.set
	local opts = { noremap = true, silent = true }

	local harpoon = require("harpoon")

	harpoon.setup({})
	wk.register({
		["<leader>ha"] = { "<cmd>lua require('user.plugins.extras.harpoon').mark_file()<cr>", "Mark file" },
        ["<leader>ht"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle menu" },
        ["<leader>h1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Navigate to file 1" },
        ["<leader>h2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Navigate to file 2" },
        ["<leader>h3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Navigate to file 3" },
        ["<leader>h4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Navigate to file 4" },
        ["<leader>h5"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "Navigate to file 5" },
        ["<leader>h6"] = { "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", "Navigate to file 6" },
        ["<leader>h7"] = { "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", "Navigate to file 7" },
        ["<leader>h8"] = { "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", "Navigate to file 8" },
        ["<leader>h9"] = { "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", "Navigate to file 9" },

	})

end

function M.mark_file()
	require("harpoon.mark").add_file()
	vim.notify("󱡅  File has been marked")
end

return M
