syntax on
set number
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'noahfrederick/vim-laravel'
Plug 'noahfrederick/vim-composer'
Plug 'tpope/vim-projectionist'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vim-airline/vim-airline'
Plug 'git@github.com:kien/ctrlp.vim'
Plug 'git@github.com:ycm-core/YouCompleteMe', {'do': './install.py --ts-completer'}
Plug 'vim-scripts/vim-auto-save'
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

let mapleader = " "
let g:auto_save = 1

let g:ycm_semantic_triggers =  {
  \   'php': ['->', '::'],
  \   'javascript': ['.'],
  \ }

nnoremap <leader>re :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>e :Ex<CR>
nnoremap <leader>q :CtrlP<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ss :Rg<SPACE>
