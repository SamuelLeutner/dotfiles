return {
  'mbbill/undotree',

  config = function()
    vim.keymap.set('n', '<leader>u', function()
      vim.cmd.UndotreeToggle()
      vim.notify('Undo tree toggled!', vim.log.levels.INFO, { title = 'UndoTree' })
    end, { desc = 'Toggle Undo Tree' })
  end,
}
