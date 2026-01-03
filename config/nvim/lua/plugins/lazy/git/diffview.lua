return {
  {
    'sindrets/diffview.nvim',
    enabled = false,
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      { 'od', '<cmd>DiffviewOpen<cr>', desc = 'Difftool' },
      -- { 'dvc', '<cmd>DiffviewClose<cr>', desc = '[D]iff[v]iew [C]lose' },
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
