return {
  {
    'sindrets/diffview.nvim',
    lazy = false,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      { '<leader>Gdo', '<cmd>DiffviewOpen<cr>', desc = '[O]pen [D]iffview' },
      { '<leader>Gdc', '<cmd>DiffviewClose<cr>', desc = '[C]lose [D]iffview' },
    },
  },
}
