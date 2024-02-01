-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Tab / Identation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
-- vim.opt.completeopt = "menuone,noselect,noinsert"
vim.opt.updatetime = 50

-- Behaviour
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start positionim.opt.number = true
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.mouse = "a"
vim.opt.modifiable = true
vim.opt.guicursor =
	"n:block,i:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.encoding = "UTF-8"
vim.opt.showmode = false
vim.o.clipboard = "unnamedplus"

-- Disable netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
