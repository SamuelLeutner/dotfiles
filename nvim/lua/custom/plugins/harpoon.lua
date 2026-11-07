return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    local function map(lhs, fn, desc)
      vim.keymap.set('n', lhs, fn, { desc = 'Harpoon: ' .. desc })
    end

    map('<leader>a', function()
      harpoon:list():add()
    end, 'add file')
    map('<leader>A', function()
      harpoon:list():prepend()
    end, 'prepend file')
    map('<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, 'menu')

    for slot = 1, 4 do
      map('<leader>' .. slot, function()
        harpoon:list():select(slot)
      end, 'open file ' .. slot)
      map('<leader>r' .. slot, function()
        harpoon:list():replace_at(slot)
      end, 'replace slot ' .. slot)
    end
  end,
}
