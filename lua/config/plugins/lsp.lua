return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"mason-org/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- for lua
					-- "vtsls", -- for ts/js -- installed via  `npm install -g @vtsls/language-server` NOT mason
					"ts_ls", -- for ts/js -- installed via mason
					"pyright", -- for python
					"clangd", -- for C
					"rust_analyzer", -- for rust
					"postgres_lsp", -- for sql
				},
			})

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("vtsls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("clangd")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("postgres_lsp")

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go-to defintion of a symbol" })
			vim.keymap.set("n", "gds", function()
				vim.cmd("vsplit")
				vim.lsp.buf.definition()
			end, { desc = "go-to defintion of a symbol on vertical split pane", noremap = true, silent = true })
			vim.keymap.set("n", "gdh", function()
				vim.cmd("split")
				vim.lsp.buf.definition()
			end, { desc = "go-to defintion of a symbol on horizontal split pane", noremap = true, silent = true })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "list references of a symbol" })
			-- vim.keymap.set("i", "<C-Space>", "<C-x><C-o>", { desc = "Open autocompletion suggestions", noremap = true })
		end,
	},
}

