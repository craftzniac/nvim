UNDO_TREE = {
  'mbbill/undotree',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>q', function()
      vim.cmd.UndotreeToggle()
      vim.cmd.UndotreeFocus()
    end, {})
  end,
}

return UNDO_TREE
