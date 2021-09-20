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

"Row count relative to current cursor positioning
set relativenumber

"Allows me to open another file without needing to save it first
set hidden  

call plug#begin()
Plug 'ntk148v/vim-horizon'                                " VIM theme
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " File explorer
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }   " Auto complete
Plug 'terryma/vim-multiple-cursors'                       " multiple string selection 
Plug 'kristijanhusak/defx-icons'
Plug 'jiangmiao/auto-pairs'                               " auto close brackets, parent etc..
Plug 'tpope/vim-fugitive'                                 " that git part u know...
Plug 'vim-airline/vim-airline'                            " pretty little github tag on the left bottom
Plug 'junegunn/vim-easy-align'                            " auto align
call plug#end()

" if you don't set this option, this color might not correct
set termguicolors
colorscheme horizon
let g:lightline = {'colorscheme' : 'horizon'}

"Open init.vim file
if has('win32') || has('win64')
  nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<CR>
  nnoremap <leader>sv :source ~\AppData\Local\nvim\init.vim<CR>
else
  nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
  nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
endif

runtime ./defx.vim
runtime ./keymaps.vim

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
