-- Setting the leader key to space
vim.g.mapleader = " "

-- In visual mode, move selected line(s) down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- In visual mode, move selected line(s) up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("x", "p", [["_dP]])

-- In normal mode, join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")
-- In normal mode, scroll down and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- In normal mode, scroll up and center
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- In normal mode, search forward and center on result
vim.keymap.set("n", "n", "nzzzv")
-- In normal mode, search backward and center on result
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over a visual selection without overwriting the unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to system clipboard in normal and visual modes
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Yank to end of line to system clipboard in normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without overwriting the unnamed register in normal and visual modes
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Exit insert mode using Ctrl+C
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the Q command in normal mode (often used for Ex mode)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<NOP>")
-- Open a new tmux window using 'my-tmux-sessionizer'
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww my-tmux-sessionizer<CR>")

-- Navigate to next compiler error and center view
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- Navigate to previous compiler error and center view
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate to next LSP error/warning and center view
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- Navigate to previous LSP error/warning and center view
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Quit the current buffer without closing the window
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>")

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Reload the Vim configuration
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Toggle wrap
vim.keymap.set("n", "<leader>w", "<cmd>set wrap!<CR>")

vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", {desc = "Dismiss Noice Message"})

