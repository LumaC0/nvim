-- format options
vim.opt_local.expandtab = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.autoindent = true
vim.opt_local.fileformat = 'unix'
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
