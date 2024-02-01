local M = {
	"nvim-pack/nvim-spectre",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	vim.api.nvim_set_keymap("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
		noremap = true,
		silent = true,
		desc = "Toggle Spectre",
	})

	vim.api.nvim_set_keymap("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
		noremap = true,
		silent = true,
		desc = "Search current word",
	})

	vim.api.nvim_set_keymap("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
		noremap = true,
		silent = true,
		desc = "Search current word",
	})

	vim.api.nvim_set_keymap("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
		noremap = true,
		silent = true,
		desc = "Search on current file",
	})
end

return M
