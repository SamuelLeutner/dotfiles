return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():prepend()
      vim.notify('File added to the top!', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Add file to top of Harpoon' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
      vim.notify('File added to Harpoon!', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Add file to Harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
      vim.notify('Harpoon menu toggled!', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Toggle Harpoon menu' })

    vim.keymap.set('n', '<C-x>', function()
      harpoon:list():select(1)
      vim.notify('Opening file 1', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Open file 1' })

    vim.keymap.set('n', '<C-c>', function()
      harpoon:list():select(2)
      vim.notify('Opening file 2', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Open file 2' })

    vim.keymap.set('n', '<C-d>', function()
      harpoon:list():select(3)
      vim.notify('Opening file 3', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Open file 3' })

    vim.keymap.set('n', '<C-v>', function()
      harpoon:list():select(4)
      vim.notify('Opening file 4', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Open file 4' })

    vim.keymap.set('n', '<leader><C-x>', function()
      harpoon:list():replace_at(1)
      vim.notify('Replaced file at position 1', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Replace file at 1' })

    vim.keymap.set('n', '<leader><C-c>', function()
      harpoon:list():replace_at(2)
      vim.notify('Replaced file at position 2', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Replace file at 2' })

    vim.keymap.set('n', '<leader><C-d>', function()
      harpoon:list():replace_at(3)
      vim.notify('Replaced file at position 3', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Replace file at 3' })

    vim.keymap.set('n', '<leader><C-v>', function()
      harpoon:list():replace_at(4)
      vim.notify('Replaced file at position 4', vim.log.levels.INFO, { title = 'Harpoon' })
    end, { desc = 'Replace file at 4' })
  end,
}
