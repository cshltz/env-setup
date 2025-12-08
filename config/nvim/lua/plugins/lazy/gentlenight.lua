return {
  'cshltz/gentlenight.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    require('gentlenight').setup {
      -- transparent = true,
      style = 'dusk',
    }

    vim.cmd.hi 'Comment gui=none'
    vim.cmd 'colorscheme gentlenight'
  end,
}
