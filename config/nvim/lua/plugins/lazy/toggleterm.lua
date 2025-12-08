return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = false,
    opts = {
      direction = 'vertical',
      size = vim.o.columns * 0.6,
      open_mapping = [[<leader>tt]],
      insert_mappings = false,
      shell = 'pwsh',
    },
  },
}
