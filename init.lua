-- NOTE: suppress errors during startuup
vim.opt.shortmess:append("I")   -- ignore "I"nitialization warningss
vim.o.errorbells = false        -- disable visual bells
vim.o.visualbell = true         -- Use visual bell instead of sound  (optional)  


vim.opt.termguicolors = true
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>/", "<cmd>lua print('hello') <CR>")

vim.opt.shiftwidth = 2 -- indent size
vim.opt.tabstop = 2 -- tab size
vim.opt.expandtab = true -- use spaces not tabs
vim.opt.smartindent = true

-- vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

vim.opt.mouse = "a"

require("config.lazy")
require("config.remaps")
