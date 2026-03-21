-- set the fold method to indent for python files only
-- the global default is foldmethod=marker ("\{\{\{")
-- do not auto fold on opening a file
vim.opt_local.foldenable = false
vim.opt_local.foldmethod = 'indent'
vim.opt.foldlevelstart = 99
vim.opt_local.foldnestmax = 2

-- toggle fold with spacebar
vim.keymap.set('n', '<space>', 'za', { buffer = true })
vim.keymap.set('v', '<space>', 'zf', { buffer = true })

-- format options for python files
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.textwidth = 88
vim.opt_local.autoindent = true
vim.opt_local.fileformat = 'unix'
vim.opt_local.textwidth = 88
vim.opt_local.formatoptions = vim.opt_local.formatoptions
  - 't' -- auto-wrap text using textwidth
  + 'c' -- Auto-wrap comments using textwidth
  + 'r' -- Auto-insert the current comment leader after hitting <Enter>
  - 'o' -- Don't auto-insert comment leader after hitting 'o' or 'O'
  + 'q' -- Allow formatting of comments with "gq"
  - 'a' -- Don't auto-format paragraphs
  + 'n' -- Recognize numbered lists
  + 'j' -- Remove comment leader when joining lines
  - '2' -- not really sure what this one does

vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.diffopt:append 'linematch:60'
vim.opt.wrap = false
