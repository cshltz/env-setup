return {
  {
    'NeogitOrg/neogit',
    lazy = true,
    cmd = 'Neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {
      kind = 'tab',
      integrations = {
        diffview = true,
      },
    },
    keys = {
      { '<leader>GG', '<cmd>Neogit<cr>', desc = '[G]it UI' },
    },
  },
}
