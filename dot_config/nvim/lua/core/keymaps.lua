vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Extends all maps with noremap
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Autoclose braces
map('i', '{<CR>', '{<CR>}<Esc>O', {})

-- A quick way to increment or decrement the number under the cursor
map('n', '+', '<C-A>', {})
map('n', '-', '<C-X>', {})

-- Faster saving
map('n', '<leader>w', ':w!<CR>', {})

-- F12 Toggles if the searched term is highlighted
vim.cmd([[
  function! ToggleHL()
    if &hls
      set nohls
    else
      set hls
    endif
  endfunction
]])
map('n', '<F12>', ':call ToggleHL()<CR>', {silent = true})

-- Various fast function key binds

-- F1 reindents the whole file and keeps your cursor where it was.
map('n', '<F1>', 'gg=G<C-o>', {})

-- F10 quicksaves and compiles your current file.
-- TODO: Use nvim plugin
map('n', '<F9>', ':w <bar> !javac -Xlint:rawtypes -Xlint:unchecked %<CR>', {})

-- This paste function pastes from the yank register.
map('n', '<C-P>', '"0p', {})

-- Open file directory
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Open links under the cursor
map("", "gx", '<Cmd>call jobstart(["xdg-open", expand("<cfile>")], {"detach": v:true})<CR>', {})
