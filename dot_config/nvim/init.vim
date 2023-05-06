"
" Load the plugins using vimplug
"
call plug#begin()
" Autopairs Plugin: Auto close brackets
Plug 'Raimondi/delimitMate'

" Nvim Tree Plugin: File Explorer
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" COQ Plugin: Autocompleter
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" COQ Extension: Code snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Lualine Extension: Status Line
Plug 'nvim-lualine/lualine.nvim'

" Treesitter Extension
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope Extension: Fuzzy Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

" LSP Setup: Wrapper to install LSPs
" Plug 'junnplus/lsp-setup.nvim'
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'
call plug#end()

" Load the Lua configuration file
luafile ~/.config/nvim/lua_config.lua

"
" Vanilla VIM stuff starts here
" 

let mapleader = ' '

" Standard housekeeping.
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
filetype plugin indent on

" Backs up the file regularly
set backup
set backupdir=~/.backup

" Less standard but useful information
set relativenumber
set showcmd
set ruler
set scrolloff=5

" A quick way to increment or decrement the number under the cursor.
nnoremap + <C-A>
nnoremap - <C-X>

" Remapping Ctrl+Movement to move between split screens easier.
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Faster saving
nnoremap <leader>w :w!<CR>

" Bindings to make navigating tabs easier
noremap <leader>tn :tabnew<CR>
noremap <leader>to :tabonly<CR>
noremap <leader>tc :tabclose<CR>
noremap <leader>tm :tabmove<CR>

" Arrow keys are unused in vim. Make them navigate tabs and screens.
nnoremap <Up> <C-w>w
nnoremap <Down> <Nop>
nnoremap <Left> gT
nnoremap <Right> gt

" F12 Toggles if the searched term is highlighted
function ToggleHL()
  if &hls
    set nohls
  else
    set hls
  endif
endfunction
nnoremap <silent> <F12> <Esc>:call ToggleHL()<CR>

" Various fast function key binds.
" F1 reindents the whole file and keeps your cursor where it was.
nnoremap <F1> mpgg=G`p
" F10 quicksaves and compiles your current file.
" TODO: Use nvim plugin
nnoremap <F9> :w <bar> !javac -Xlint:rawtypes -Xlint:unchecked %<CR>
" F11 opens a terminal in a new tab.
nnoremap <F11> :tab ter<CR>

" This paste functions pastes from the yank register.
nnoremap <C-P> "0p
