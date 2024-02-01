local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
}

function M.config()
	local harpoon = require("harpoon")

	-- Set the default save location to be the current project root
	harpoon.ui.settings.save_on_toggle = true
	harpoon.ui.settings.sync_on_ui_close = true

	-- Add the current file to Harpoon's list
	vim.keymap.set("n", "<leader>ha", function()
		harpoon:list():append()
		vim.notify("󱡅  marked file")
	end)
	vim.keymap.set("n", "<leader>ht", function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end)

	-- Navigate to files at indices 1-9
	for i = 1, 9 do
		vim.keymap.set("n", "<leader>h" .. i, function()
			harpoon:list():select(i)
		end)
	end
end

return M
