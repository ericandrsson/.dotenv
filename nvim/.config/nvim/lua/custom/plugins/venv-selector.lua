return {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    config = true,
    dependencies = {"neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim"},
    opts = {
        search = true,
        search_workspace = true,
        parents = 0,
        name = {"venv", ".venv", ".direnv"}
    },
    keys = {{
    -- Keymap to open VenvSelector to pick a venv.
		"<leader>vs", "<cmd>:VenvSelect<cr>",
		-- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		"<leader>vc", "<cmd>:VenvSelectCached<cr>"
	}}

}
