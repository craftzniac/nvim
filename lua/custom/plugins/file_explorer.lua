FILE_EXPLORER = {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  -- keys = {
  --   {"n", "<leader>t", ":NvimTreeToggle<CR>", { silent = true }}
  -- },
  config = function()
    require('nvim-tree').setup {}

    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true })
  end,
}

return FILE_EXPLORER
