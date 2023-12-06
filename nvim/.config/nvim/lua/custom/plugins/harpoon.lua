return {
	"theprimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		-- Add the current file to Harpoon's list
		vim.keymap.set("n", "<leader>ha", mark.add_file, {})

		-- Show the Harpoon list
		vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu, {})

		-- Navigate to files at indices 1-9
		for i = 1, 9 do
			vim.keymap.set("n", "<leader>h" .. i, function()
				ui.nav_file(i)
			end, {})
		end
	end,
}
