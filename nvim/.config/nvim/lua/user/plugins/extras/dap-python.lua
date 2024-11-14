local M = {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	lazy = false,
	depdendencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
}
function M.config()
	local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
	require("dap-python").setup(path)
	require("copilot").setup({})
end
return M
