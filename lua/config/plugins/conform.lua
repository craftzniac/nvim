-- formatting
return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local venv_python = vim.fn.getcwd() .. "/.venv/bin/black"
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
				javascript = { "biome" },
				lua = { "stylua" },
				c = { "clang-format" },
				python = { "black" },
				rust = { "rustfmt" }, -- installed rustfmt via `rustup component add rustfmt`
				json = { "jq" },
			},
			formatters = {
				black = { exe = venv_python },
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			conform.format({
				async = true,
				lsp_fallback = true,
			})
		end, { desc = "[F]ormat buffer" })
	end,
}

