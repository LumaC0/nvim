return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/mcphub.nvim',
    'MeanderingProgrammer/render-markdown.nvim',
  },
  config = function()
    require('render-markdown').setup {
      ft = {
        'markdown',
        'codecompanion',
      },
    }
    require('codecompanion').setup {
      strategies = {
        chat = {
          tools = {
            ['mcp'] = {
              callback = require 'mcphub.extensions.codecompanion',
              description = 'Call tools and resources from the MCP Servers',
              opts = {
                -- user_approval = true,
                requires_approval = false,
              },
            },
          },
        },
      },
      display = {
        chat = {
          -- Change the default icons
          icons = {
            pinned_buffer = ' ',
            watched_buffer = '👀 ',
          },

          -- Alter the sizing of the debug window
          debug_window = {
            ---@return number|fun(): number
            width = vim.o.columns - 5,
            ---@return number|fun(): number
            height = vim.o.lines - 2,
          },

          -- Options to customize the UI of the chat buffer
          window = {
            layout = 'vertical', -- float|vertical|horizontal|buffer
            position = 'right', -- left|right|top|bottom (nil will default depending on vim.opt.plitright|vim.opt.splitbelow)
            border = 'single',
            height = 0.8,
            width = 0.3,
            relative = 'editor',
            full_height = false, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
            opts = {
              breakindent = true,
              cursorcolumn = false,
              cursorline = false,
              foldcolumn = '0',
              linebreak = true,
              list = false,
              numberwidth = 1,
              signcolumn = 'no',
              spell = false,
              wrap = true,
            },
          },

          ---Customize how tokens are displayed
          ---@param tokens number
          ---@param adapter CodeCompanion.Adapter
          ---@return string
          token_count = function(tokens, adapter)
            return ' (' .. tokens .. ' tokens)'
          end,
        },
      },
    }
  end,
}
