return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.0",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-live-grep-args.nvim",
	},

	config = function()
		-- local builtin = require("telescope.builtin")
		-- local actions = require("telescope.actions")
		local telescope = require("telescope")
		-- local telescopeConfig = require("telescope.config")

		-- Clone the default Telescope configuration
		-- local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
		--
		-- -- I want to search in hidden/dot files.
		-- table.insert(vimgrep_arguments, "--hidden")
		-- -- I don't want to search in the `.git` directory.
		-- table.insert(vimgrep_arguments, "--glob")
		-- table.insert(vimgrep_arguments, "!**/.git/*")
		-- telescope.setup({
		--     defaults = {
		--         path_display = { "truncate " },
		--         file_ignore_patterns = { "node_modules" },
		--         mappings = {
		--             i = {
		--                 ["<C-k>"] = actions.move_selection_previous, -- move to prev result
		--                 ["<C-j>"] = actions.move_selection_next, -- move to next result
		--                 ["<C-o>"] = actions.select_default + actions.center, -- open in new buffer
		--             },
		--         },
		--     },
		-- })

		telescope.load_extension("fzf")

		local keymap = vim.keymap -- for convenience
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
		-- keymap.set("n", "<leader>ps", function()
		-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
		-- end)
		--
		-- keymap.set(
		--     "n",
		--     "<leader>fg",
		--     "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
		--     { desc = "Live Grep" }
		-- )
		-- -- vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
		-- vim.keymap.set(
		--     "n",
		--     "<leader>fc",
		--     '<cmd>lua require("telescope.builtin").live_grep({ glob_pattern = "!{spec,test}"})<CR>',
		--     { desc = "Live Grep Code" }
		-- )
		-- vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
		-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help Tags" })
		-- vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Find Symbols" })
		-- vim.keymap.set("n", "<leader>fi", "<cmd>AdvancedGitSearch<CR>", { desc = "AdvancedGitSearch" })
		-- vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find Old Files" })
		-- vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word under Cursor" })
		-- vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Search Git Commits" })
		-- vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, { desc = "Search Git Commits for Buffer" })
	end,
}
