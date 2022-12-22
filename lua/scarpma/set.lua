-- line numbers

vim.opt.nu = true

-- tabstop
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"

-- Set colorscheme
vim.o.termguicolors = true
