return {
	"kkoomen/vim-doge",
	lazy = false,
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>d", ":Doge<CR>", { noremap = true, silent = true })
	end,
}
