vim.o.relativenumber = true
-- set number of spaces that <Tab> counts for
vim.o.tabstop = 2

-- set the number of spaces to use for each step of (auto)indent
vim.o.shiftwidth = 4

-- use spaces instead of tabs
vim.o.expandtab = true

-- make neovim background transparent
vim.cmd [[
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
]]

return {}
