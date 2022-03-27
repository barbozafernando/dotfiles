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
Plug 'nvim-telescope/telescope.nvim'                      " fuzzy finder
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }   " Auto complete
Plug 'jiangmiao/auto-pairs'                               " auto close brackets, parent etc..
Plug 'tpope/vim-fugitive'                                 " that git part u know...
Plug 'vim-airline/vim-airline'                            " pretty little github tag on the left bottom
Plug 'junegunn/vim-easy-align'                            " auto align
call plug#end()

set termguicolors

"Open init.vim file
if has('win32') || has('win64')
  nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<CR>
  nnoremap <leader>sv :source ~\AppData\Local\nvim\init.vim<CR>
else
  nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
  nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
endif

runtime ./keymaps.vim
runtime ./telescope.rc.vim

let g:ycm_autoclose_preview_window_after_completion = 1
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
