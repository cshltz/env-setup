return {
  {
    'sindrets/diffview.nvim',
    lazy = false,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      { '<leader>dvo', '<cmd>DiffviewOpen<cr>', desc = '[D]iff[v]iew [O]pen' },
      { '<leader>dvc', '<cmd>DiffviewClose<cr>', desc = '[D]iff[v]iew [C]lose' },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = {
          layout = 'diff3_mixed',
          disable_diagnostics = true,
          winbar_info = true,
        },
      },
    },
  },
}
