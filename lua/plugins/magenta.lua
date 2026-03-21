local mcpServers = {}
local profiles = {
  {
    name = 'claude-max',
    provider = 'anthropic',
    model = 'claude-3-7-sonnet-latest',
    authType = 'max',
  },
  -- {
  --   name = 'claude-opus-4',
  --   provider = 'anthropic',
  --   model = 'claude-opus-4-20250514',
  -- },
  -- {
  --   name = 'claude-sonnet-4',
  --   provider = 'anthropic',
  --   model = 'claude-sonnet-4-20250514',
  -- },
  -- {
  --   name = 'claude-3-7',
  --   provider = 'anthropic',
  --   model = 'claude-3-7-sonnet-latest',
  -- },
}
local editPrediction = {
  -- Maximum number of changes to track for context (default: 10)
  changeTrackerMaxChanges = 20,

  -- Token budget for including recent changes (default: 1000)
  -- Higher values include more history but use more tokens
  recentChangeTokenBudget = 1500,

  -- Replace the default system prompt entirely
  -- systemPrompt = "Your custom prediction system prompt here...",

  -- Append to the default system prompt instead of replacing it
  systemPromptAppend = 'Additional instructions to improve predictions...',
}

return {
  'dlants/magenta.nvim',
  dev = false,
  lazy = false, -- you could also bind to <leader>mt
  build = 'npm install --frozen-lockfile',
  dependencies = {
    'ibhagwan/fzf-lua',
  },
  config = function()
    require('magenta').setup {
      sidebarPosition = 'right',
      profiles = profiles,
      mcpServers = mcpServers,
      autoContext = {
        'context.md',
        'claude.*.md',
        '.magenta/*.md',
      },
      editPrediction = editPrediction,
      chimeVolume = 0.1,
    }
  end,
}
