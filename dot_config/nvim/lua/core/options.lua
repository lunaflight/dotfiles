-- Standard housekeeping
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.cmd('filetype plugin indent on')

-- Less standard but useful information
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.scrolloff = 5

-- Add printing for unprintable characters
-- vim.opt.list = true
-- vim.opt.listchars = {
--     space = '⋅',
--     eol = "↴"
-- }
