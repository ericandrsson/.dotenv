local M = {
	"epwalsh/obsidian.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	require("obsidian").setup({
		workspaces = {
			{
				name = "the-pensieve",
				path = "~/vaults/the-pensieve",
			},
		},
		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d-%a",
			time_format = "%H:%M",
		},
	})
end

return M
