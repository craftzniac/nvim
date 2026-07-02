return {
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>q", ":UndotreeToggle<CR>", { desc = "Toggle undo tree" })
        end
    }
}

