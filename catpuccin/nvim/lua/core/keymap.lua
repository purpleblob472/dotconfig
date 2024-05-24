vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.showcmd = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.wrap = false


vim.keymap.set('n', '<leader>s', ':nohlsearch<CR>')
vim.keymap.set('i', '<C-H>', '<C-W>')
vim.keymap.set('n', '<leader>o', 'o<Esc>')
vim.keymap.set('n', '<leader>O', 'O<Esc>')
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
--vim.keymap.set('n', '<leader>w', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>v', '<C-W>v')
vim.keymap.set('n', '<leader><Tab>', '<C-W>w')
vim.keymap.set('n', '<leader>"', '<C-W>s')
