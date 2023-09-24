require("drvondevious")

vim.o.colorcolumn = '80'
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 6
vim.o.sidescrolloff = 12
vim.o.wrap = false
vim.o.spell = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes:2"
vim.o.guicursor = 'i-ci-ve:ver25-blinkon175-blinkoff175'

vim.o.autoread = true
vim.o.belloff = 'all'
vim.o.clipboard = 'unnamedplus'
vim.o.confirm = true

vim.o.list = true
vim.g.listchars = {
    trail = '·',
    extends = '»',
    precedes = '«',
    nbsp = '␣',
}

vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
vim.g.netrw_banner = 0

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.swapfile = false
vim.o.backup = false

vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
