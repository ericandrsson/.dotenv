return {
	"kdheepak/lazygit.nvim",
	config = function()
		-- Set up the keybinding for LazyGit
		-- Assuming that your leader key is set to "\" or " "
		vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })
	end,
	-- Make the plugin load lazily on the keymap invocation
	lazy = false,
	requires = "nvim-lua/plenary.nvim",
}
