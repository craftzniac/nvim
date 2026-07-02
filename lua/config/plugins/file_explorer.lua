-- return {
--     {
--     "nvim-tree/nvim-tree.lua",
--     enabled = false,
--     dependencies = {
--         "nvim-tree/nvim-web-devicons"
--     },
--     config = function()
--             require("nvim-tree").setup({ view = {
--                 width = 20,
--                 side = "right",
--                 number = true,
--                 relativenumber = true
--             }})
--             vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "[T]oggle nvimtree", noremap = true, silent = true, nowait = true })
--         end
--     }
-- }

function toggle_oil()
    local oil = require("oil")
    oil.toggle_float()
    -- for _, win in ipairs(vim.api.nvim_list_wins()) do
    --     local buf = vim.api.nvim_win_get_buf(win)
    --     if vim.bo[buf].filetype == "oil" then
    --         -- vim.api.nvim_win_close(win, true)
    --         oil.close()
    --         break
    --     end
    -- end

    -- Otherwise, open Oil in current working directory
    -- vim.cmd("vsplit")
    -- vim.cmd("wincmd l")
    -- vim.cmd("Oil")
end



return {
    {
        'stevearc/oil.nvim',
        --- @module 'oil'
        --- @type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
        config = function()
            require("oil").setup{
                delete_to_trash = true,
                watch_for_changes = true
            }
            vim.keymap.set("n", "<leader>t", toggle_oil, {desc ="[T]oggle oil.nvim buffer"})
        end
    }
}
