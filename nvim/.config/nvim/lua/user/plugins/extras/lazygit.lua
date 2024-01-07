local M = {
	"kdheepak/lazygit.nvim",
	requires = "nvim-lua/plenary.nvim",
}

function M.config()
	local wk = require("which-key")
	wk.register({
		["<leader>lg"] = { "<cmd>LazyGit<cr>", "LazyGit" },
	})
end

return M
