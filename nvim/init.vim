set number
set syntax
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set inccommand=split
set colorcolumn=105
set relativenumber
set hidden  

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'ThePrimeagen/harpoon'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

set termguicolors
set guifont=Consolas\ 12
set guicursor=i:block

colorscheme gruvbox

runtime ./keymaps.vim
runtime ./telescope.rc.vim
runtime ./harpoon.vim

let g:ycm_echo_current_diagnostic = 'virtual-text'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_update_diagnostics_in_insert_mode = 0
let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
