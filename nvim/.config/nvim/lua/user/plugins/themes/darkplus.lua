local M = {
	"LunarVim/darkplus.nvim",
	lazy = false,
	priority = 1000,
	name = "darkplus-theme",
}

function M.config()
	vim.cmd.colorscheme("darkplus")
end

return M
