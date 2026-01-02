return {
  {
    'folke/trouble.nvim',
    enabled = true,
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>trx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = '[Tr]ouble Diagnostics',
      },
      {
        '<leader>trX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = '[Tr]ouble Buffer Diagnostics',
      },
      {
        '<leader>trs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = '[Tr]ouble Symbols',
      },
      {
        '<leader>trl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = '[Tr]ouble LSP Definitions',
      },
      {
        '<leader>trL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = '[Tr]ouble Location List',
      },
      {
        '<leader>trQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = '[Tr]ouble Quickfix List',
      },
    },
  },
}
