return {
  {
    'sindrets/diffview.nvim',
    enabled = true,
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      { 'dvo', '<cmd>DiffviewOpen<cr>', desc = '[D]iff[v]iew [O]pen' },
      { 'dvc', '<cmd>DiffviewClose<cr>', desc = '[D]iff[v]iew [C]lose' },
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
