-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    cmd = 'Neotree',
    lazy = false,
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-mini/mini.icons',
      'MunifTanjim/nui.nvim',
    },
    init = function()
      vim.g.loaded_netrwPlugin = 1
      vim.g.loaded_netrw = 1

      vim.api.nvim_create_autocmd('BufNewFile', {
        group = vim.api.nvim_create_augroup('RemoteFile', { clear = true }),
        callback = function()
          local f = vim.fn.expand '%:p'
          for _, v in ipairs { 'sftp', 'scp', 'ssh', 'dav', 'fetch', 'ftp', 'http', 'rcp', 'rsync' } do
            local p = v .. '://'
            if string.sub(f, 1, #p) == p then
              vim.cmd [[
          unlet g:loaded_netrw
          unlet g:loaded_netrwPlugin
          runtime! plugin/netrwPlugin.vim
          silent Explore %
        ]]
              vim.api.nvim_clear_autocmds { group = 'RemoteFile' }
              break
            end
          end
        end,
      })
    end,
    keys = {
      { '<leader>te', ':Neotree reveal<CR>', { desc = '[T]oggle [E]xplorer' } },
    },
    opts = {
      window = {
        mappings = {
          ['<leader>te'] = 'close_window',
        },
      },
      filesystem = {
        hijack_netrw_behavior = 'open_current',
        filtered_items = {
          visible = false,
          hide_gitignored = true,
          hide_dotfiles = false,
          hide_by_name = {
            '.github',
            '.gitignore',
            'package-lock.json',
            '.changeset',
            '.pretterrc.json',
          },
          never_show = { '.git' },
        },
      },
      event_handlers = {
        {
          event = 'file_open_requested',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    },
  },
}
