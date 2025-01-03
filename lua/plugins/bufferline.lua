return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require 'bufferline'
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        style_preset = bufferline.style_preset.default,
        numbers = 'ordinal',
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        left_mouse_command = 'buffer %d',
        middle_mouse_command = nil,
        indicator = {
          icon = '▎',
          style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        name_formatter = function(buf)
          return buf.name
        end,
        diagnostics = 'nvim_lsp',
        diagnostics_update_on_event = true,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          },
        },
        color_icons = true,
        show_buffer_icons = true,
        show_bugger_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        seperator_style = 'padded_slant',
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 20,
          reveal = { 'close' },
        },
        groups = {
          items = {
            require('bufferline.groups').builtin.pinned:with { icon = '' },
          },
        },
      },

      vim.keymap.set('n', 'gt', ':BufferLineCycleNext<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', 'g<S-t>', ':BufferLineCyclePrev<CR>', { noremap = false, silent = true }),

      vim.keymap.set('n', '<leader>bl', ':BufferLineCloseLeft<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>br', ':BufferLineCloseRight<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>bp', ':BufferLinePickClose<CR>', { noremap = false, silent = true }),

      vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', { noremap = false, silent = true }),
      vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', { noremap = false, silent = true }),
    }
  end,
}
