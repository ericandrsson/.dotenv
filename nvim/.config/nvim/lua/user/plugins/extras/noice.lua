local M = {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
}

function M.config()
	require("noice").setup({
		lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
			signature = {
				enabled = false,
				auto_open = {
					enabled = false,
					trigger = false, -- Automatically show signature help when typing a trigger character from the LSP
					luasnip = false, -- Will open signature help when jumping to Luasnip insert nodes
					throttle = 50, -- Debounce lsp signature help request by 50ms
				},
				view = nil, -- when nil, use defaults from documentation
				opts = {}, -- merged with defaults from documentation
			},
		},
		presets = {
			bottom_search = true, -- use a classic bottom cmdline for search
			command_palette = true, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = true, -- add a border to hover docs and signature help
		},
		views = {
			-- Clean cmdline_popup + palette
			cmdline_popup = {
				position = {
					row = 10,
					col = "50%",
				},
				border = {
					style = "none",
					padding = { 2, 3 },
				},
				size = {
					min_width = 60,
					width = "auto",
					height = "auto",
				},
				win_options = {
					winhighlight = { NormalFloat = "NormalFloat", FloatBorder = "FloatBorder" },
				},
			},
			cmdline_popupmenu = {
				relative = "editor",
				position = {
					row = 13,
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
					max_height = 15,
				},
				border = {
					style = "none",
					padding = { 0, 3 },
				},
				win_options = {
					winhighlight = { NormalFloat = "NormalFloat", FloatBorder = "NoiceCmdlinePopupBorder" },
				},
			},
			hover = {
				border = {
					style = "single",
				},
			},
			confirm = {
				border = {
					style = "single",
				},
			},
			popup = {
				border = {
					style = "single",
				},
			},
		},
	})
end

return M
