vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.api.nvim_set_keymap('i', '<Tab>', '<C-N>', {})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-P>', {})

vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', {})

-- A quick way to increment or decrement the number under the cursor
vim.api.nvim_set_keymap('n', '+', '<C-A>', {})
vim.api.nvim_set_keymap('n', '-', '<C-X>', {})

-- Remapping Ctrl+Movement to move between split screens easier.
vim.api.nvim_set_keymap('', '<C-j>', '<C-W>j', {})
vim.api.nvim_set_keymap('', '<C-k>', '<C-W>k', {})
vim.api.nvim_set_keymap('', '<C-h>', '<C-W>h', {})
vim.api.nvim_set_keymap('', '<C-l>', '<C-W>l', {})

-- Faster saving
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', {})

-- Bindings to make navigating tabs easier
vim.api.nvim_set_keymap('', '<leader>tn', ':tabnew<CR>', {})
vim.api.nvim_set_keymap('', '<leader>to', ':tabonly<CR>', {})
vim.api.nvim_set_keymap('', '<leader>tc', ':tabclose<CR>', {})
vim.api.nvim_set_keymap('', '<leader>tm', ':tabmove<CR>', {})

-- Arrow keys are unused in vim. Make them navigate tabs and screens.
vim.api.nvim_set_keymap('n', '<Up>', '<C-w>w', {})
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', {})
vim.api.nvim_set_keymap('n', '<Left>', 'gT', {})
vim.api.nvim_set_keymap('n', '<Right>', 'gt', {})

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
vim.api.nvim_set_keymap('n', '<F12>', ':call ToggleHL()<CR>', {silent = true})

-- Various fast function key binds

-- F1 reindents the whole file and keeps your cursor where it was.
vim.api.nvim_set_keymap('n', '<F1>', 'mpgg=G`p', {})

-- F10 quicksaves and compiles your current file.
-- TODO: Use nvim plugin
vim.api.nvim_set_keymap('n', '<F9>', ':w <bar> !javac -Xlint:rawtypes -Xlint:unchecked %<CR>', {})

-- This paste function pastes from the yank register.
vim.api.nvim_set_keymap('n', '<C-P>', '"0p', {})

vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
