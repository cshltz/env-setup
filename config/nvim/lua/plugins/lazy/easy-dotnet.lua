return {
  {
    'GustavEikaas/easy-dotnet.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'folke/snacks.nvim' },
    config = function()
      require('easy-dotnet').setup()

      vim.keymap.set('n', '<leader>dnd', function()
        vim.cmd 'Dotnet debug default profile'
      end, { nowait = true, desc = 'Start [D]ot[n]et [D]ebugging' })
    end,
  },
}
