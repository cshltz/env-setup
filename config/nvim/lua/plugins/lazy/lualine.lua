return {
  {
    'nvim-lualine/lualine.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = true,
    options = {
      theme = 'auto',
    },
  },
}
