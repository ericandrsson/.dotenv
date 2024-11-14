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
				name = "vault",
				path = "$OBSIDIAN_VAULT_PATH",
			},
		},
		notes_subdir = "inbox",
		new_notes_location = "notes_subdir",
		disable_frontmatter = true,
		templates = {
			subdir = "templates",
			date_format = "%d-%m-%Y",
			time_format = "%H:%M",
		},

		mappings = {
			-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- toggle check-boxes
			-- ["<leader>ch"] = {
			--   action = function()
			--     return require("obsidian").util.toggle_checkbox()
			--   end,
			--   opts = { buffer = true },
			-- },
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2,
		},
		ui = {
			-- Disable some things below here because I set these manually for all Markdown files using treesitter
			checkboxes = {},
		},
	})
end

return M
