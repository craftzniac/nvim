-- Boostrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit ..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
-- put lazy into the runtimepath for neovim
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- setup lazy.nvim
require("lazy").setup({
	spec = {
		-- THEMES
		-- 1.
		-- {
		-- 	"folke/tokyonight.nvim",
		-- 	lazy = false,
		-- 	priority = 1000,
		-- 	config = function()
		-- 		vim.cmd.colorscheme("tokyonight")
		-- 		-- make neovim transparent
		-- 		vim.cmd([[
		--         highlight Normal guibg=none
		--         highlight NonText guibg=none
		--         highlight Normal ctermbg=none
		--         highlight NonText ctermbg=none
		--       ]])
		-- 	end,
		-- },

		-- 2.
		-- { "savq/melange-nvim" },

		-- 3.
		{
			"sainnhe/gruvbox-material",
			lazy = false,
			priority = 1000,
			config = function()
				-- Optionally configure and load the colorscheme
				-- directly inside the plugin declaration.
				vim.g.gruvbox_material_enable_italic = true
				vim.cmd.colorscheme("gruvbox-material")
			end,
		},

		--import your plugins
		{ import = "config.plugins" },
	},
	-- configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins
	-- install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
