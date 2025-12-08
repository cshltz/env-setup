return {
  {
    'rcarriga/nvim-notify',
    opts = {},
    init = function()
      vim.notify = require 'notify'
    end,
  },
}
