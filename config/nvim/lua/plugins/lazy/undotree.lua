return {
  {
    'mbbill/undotree',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_SplitWidth = 45
      vim.g.undotree_SetFocusWhenToggle = 1

      vim.keymap.set('n', '<leader>ou', vim.cmd.UndotreeToggle, { desc = 'UndoTree' })
    end,
  },
}
