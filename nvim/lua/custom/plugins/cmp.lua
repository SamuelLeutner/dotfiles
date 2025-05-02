return {
  'hrsh7th/nvim-cmp',
  opts = function(_, opts)
    opts.completion = opts.completion or {}
    opts.completion.autocomplete = false
    local cmp = require 'cmp'
    opts.mapping = vim.tbl_extend('force', opts.mapping or {}, {
      ['<leader><Tab>'] = cmp.mapping.complete(),
    })
    return opts
  end,
  enabled = true,
}
