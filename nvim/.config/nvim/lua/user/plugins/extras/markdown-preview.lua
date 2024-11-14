local M = {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	event = "BufRead",
}

function M.config() end

return M
