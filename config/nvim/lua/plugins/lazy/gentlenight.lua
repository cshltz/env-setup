return {
  'cshltz/gentlenight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.hi 'Comment gui=none'
    vim.cmd 'colorscheme gentlenight'
  end,
}
