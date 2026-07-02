-- remap navigation between split windows
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to the above window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to the right window" })
vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to the left window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to the below window" })

-- remap diagnostic popup
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })

-- clear  highlight only if something is lighlighted
vim.keymap.set("n", "<Esc>", function()
	if vim.v.hlsearch then
		vim.cmd("nohlsearch")
	end
end, { desc = "Clear highlight after search" })

