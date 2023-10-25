set number
set syntax
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set encoding=utf-8
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
set termguicolors
set guifont=Consolas\ 12
set guicursor=i:block
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'ThePrimeagen/harpoon'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wadackel/vim-dogrun'
call plug#end()

colorscheme dogrun

runtime ./keymaps.vim
runtime ./telescope.rc.vim
runtime ./harpoon.vim

let g:ycm_enable_semantic_highlighting=1
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
