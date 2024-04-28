return {
  {
    'stevearc/oil.nvim',
    keys = {
      vim.keymap.set({ 'n' }, '<leader>oe', '<ESC>:Oil<ENTER>', { desc = '[O]pen [E]xplorer' }),
    },
    opts = {
      use_default_keymaps = false,
      keymaps = {
        ['<CR>'] = 'actions.select',
        ['<C-c>'] = { 'actions.close', mode = 'n' },
        ['<C-p>'] = 'actions.preview',
        ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gx'] = 'actions.open_external',
      },
      -- keymaps = {
      --   ['g?'] = { 'actions.show_help', mode = 'n' },
      --   ['<CR>'] = 'actions.select',
      --   ['<C-s>'] = { 'actions.select', opts = { vertical = true } },
      --   ['<C-h>'] = { 'actions.select', opts = { horizontal = true } },
      --   ['<C-t>'] = { 'actions.select', opts = { tab = true } },
      --   ['<C-p>'] = 'actions.preview',
      --   ['<C-c>'] = { 'actions.close', mode = 'n' },
      --   ['<C-l>'] = 'actions.refresh',
      --   ['-'] = { 'actions.parent', mode = 'n' },
      --   ['_'] = { 'actions.open_cwd', mode = 'n' },
      --   ['`'] = { 'actions.cd', mode = 'n' },
      --   ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
      --   ['gs'] = { 'actions.change_sort', mode = 'n' },
      --   ['gx'] = 'actions.open_external',
      --   ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
      --   ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      -- },
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
          local function arrayContains(table, value)
            for i, v in ipairs(table) do
              if value == v then
                return true
              end
            end
            return false
          end

          local function arrayContainsPattern(table, value)
            for i, v in ipairs(table) do
              if string.find(value, v) then
                return true
              end
            end
            return false
          end

          local hiddenFiles = {
            '.git',
          }
          local hiddenFilePatterns = {}

          local hasFileName = arrayContains(hiddenFiles, name)
          local hasFilePattern = arrayContainsPattern(hiddenFilePatterns, name)

          return (hasFileName or hasFilePattern)
        end,
      }, -- Example: Always hide files ending with ".tmp"
    },
    dependencies = {
      {
        'nvim-mini/mini.icons',
        opts = {},
      },
    },
    lazy = false,
  },
}
