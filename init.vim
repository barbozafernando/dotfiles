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

"Row count relative to current cursor positioning
set relativenumber

"Allows me to open another file without needing to save it first
set hidden  

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'noahfrederick/vim-laravel'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"jiangmiao/auto-pairs - auto close brackets, parens etc..

colorscheme gruvbox
set background=dark

let mapleader = "\<space>"

"Adds ; at the end of a line
nnoremap <leader>; A;<esc>

"Open init.vim file
if has('win32') || has('win64')
  nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<CR>
  nnoremap <leader>sv :source ~\AppData\Local\nvim\init.vim<CR>
else
  nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
  nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
endif

"Open new screen and goes back one directory level
nnoremap <leader>re :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"Go back one directory level
nnoremap <leader>e :Ex<CR>

"Enable ctrl+v from external files
nnoremap <leader>v "+p<CR>

"Switch between horizontal screens
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

"Open list files on current directory
nnoremap <c-p> :Files<CR>
