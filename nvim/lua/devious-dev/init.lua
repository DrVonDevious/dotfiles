require('devious-dev.remap').setup()

vim.opt.number = true -- Shows line numbers
vim.opt.relativenumber = true -- Line numbers relative to the current line

vim.opt.wrap = false -- Disables line wrapping
vim.opt.scrolloff = 8 -- Starts scrolling before reaching the top or bottom edges
vim.opt.sidescrolloff = 16 -- Starts scrolling before reaching the left or right edges

vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftwidth = 2 -- Indentation width
vim.opt.softtabstop = 2 -- Number of spaces tabs count for while performing editing operations
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Insert indents automatically

vim.opt.backup = false -- Disable backup files
vim.opt.autoread = true -- Reload files when they change on disk
vim.opt.undofile = true -- Enable undo files
vim.opt.swapfile = false -- Disable swap files
vim.opt.autochdir = true -- Change working directory to the current file

-- Set the directory for undo files
vim.opt.undodir = os.getenv('HOME') .. '/.config/nvim/undodir'

-- I may come to regret this...
vim.opt.clipboard = 'unnamedplus' -- Copy and paste between vim and the system clipboard

vim.opt.title = true -- Set the window title
vim.opt.cursorline = true -- Highlight the current line
vim.opt.signcolumn = 'yes:2' -- Shows a column on the left with signs
vim.opt.colorcolumn = '80' -- Show a vertical line at 80 characters
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.guicursor = 'i-ci-ve:ver25-blinkon175-blinkoff175' -- Set cursor style

vim.opt.hlsearch = false -- Highlight search results
vim.opt.incsearch = true -- Show search results as you type

vim.opt.list = true -- Show whitespace characters
vim.opt.listchars = {
  tab = '» ',
  trail = '·',
  extends = '»',
  precedes = '«',
  nbsp = '␣',
} -- Set the characters to use for whitespace

-- Get those beep sounds out of my ear holes!
vim.opt.errorbells = false -- Disables error bells
