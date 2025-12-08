require('lazy').setup({
  require 'plugins.lazy.snacks',
  require 'plugins.lazy.gentlenight',
  require 'plugins.lazy.lualine',

  require 'plugins.lazy.lspconfig',
  require 'plugins.lazy.blink-cmp',
  require 'plugins.lazy.treesitter',
  require 'plugins.lazy.debug',
  require 'plugins.lazy.trouble',
  require 'plugins.lazy.undotree',
  require 'plugins.lazy.easy-dotnet',
  -- require 'plugins.lazy.roslyn',

  require 'plugins.lazy.gitsigns',
  require 'plugins.lazy.diffview',

  require 'plugins.lazy.autopairs',
  require 'plugins.lazy.guess-indent',
  require 'plugins.lazy.conform',
  require 'plugins.lazy.lint',

  require 'plugins.lazy.which-key',
  require 'plugins.lazy.todo-comments',
  require 'plugins.lazy.mini-icons',
  require 'plugins.lazy.mini-ai',
  require 'plugins.lazy.mini-surround',
  require 'plugins.lazy.pomo',

  -- require 'plugins.lazy.tokyonight',
  -- require 'plugins.lazy.telescope',
  -- require 'plugins.lazy.neo-tree',
  -- require 'plugins.lazy.oil',
  -- require 'plugins.lazy.oil-git',
  -- require 'plugins.lazy.neogit',
  -- require 'plugins.lazy.indent_line',
  -- require 'plugins.lazy.toggleterm',
  -- require 'plugins.lazy.obsidian',
  -- require 'plugins.lazy.nvim-notify',
  -- require 'plugins.lazy.mini-notify',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
