UNDO_TREE = {
  'mbbill/undotree',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>q', vim.cmd.UndotreeToggle, {})
  end,
}

return UNDO_TREE
