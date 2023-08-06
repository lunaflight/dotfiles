vim.opt.termguicolors = true

-- The following highlights may be overridden by colorscheme.lua.
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#55CDFC gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#F7A8B8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#FFFFFF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#F7A8B8 gui=nocombine]]

vim.cmd [[highlight Whitespace guifg=#888888]]
vim.cmd [[highlight NonText guifg=#888888]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
    },
}
