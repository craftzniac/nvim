return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set(
				"n",
				"<leader>spf",
				builtin.git_files,
				{ desc = "[S]earch [P]roject [F]iles using telescope. That is, files in the project tracked by Git" }
			)
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles using telescope" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch live [G]rep using telescope" })
			vim.keymap.set("n", "<leader> ", builtin.buffers, { desc = "Search open buffers using telescope" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp tags using telescope" })
			-- vim.keymap.set("n", "<leader>sw", builtin.lsp_references, { desc = "[S]earch [W]elp under cursor using telescope" })
			vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = " using telescope" })
		end,
	},
}

