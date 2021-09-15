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
Plug 'ntk148v/vim-horizon'                          " VIM theme
Plug 'noahfrederick/vim-laravel'                    " Laravel snippets
Plug 'sheerun/vim-polyglot'                         " pack of languages syntaxes and more 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf finder
Plug 'junegunn/fzf.vim'                             " fzf finder
Plug 'terryma/vim-multiple-cursors'                 " multiple string selection 
Plug 'jiangmiao/auto-pairs'                         " auto close brackets, parent etc..
Plug 'tpope/vim-fugitive'                           " that git part u know...
Plug 'vim-airline/vim-airline'                      " pretty little github tag on the left bottom
Plug 'junegunn/vim-easy-align'                      " auto align
call plug#end()

" if you don't set this option, this color might not correct
set termguicolors
colorscheme horizon
let g:lightline = {'colorscheme' : 'horizon'}

let mapleader = "\<space>"

"Open init.vim file
if has('win32') || has('win64')
  nnoremap <leader>ev :vsplit ~\AppData\Local\nvim\init.vim<CR>
  nnoremap <leader>sv :source ~\AppData\Local\nvim\init.vim<CR>
else
  nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
  nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
endif

"Go back one directory level
nnoremap <silent>sf :Ex<CR>

"Enable ctrl+v from external files
nnoremap <leader>v "+p<CR>

"Switch between horizontal screens
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

"Open list files on current directory
nnoremap <c-p> :Files<CR>

"Git commands
nmap <leader>gs :G<CR>

"Escape button with fj instead pressing Esc
inoremap fj <Esc>
tnoremap fj <C-\><C-n>

"Start interactive EasyAlign in visual mode (e.g. vipga)
"Usage=select all the lines and type ga=
xmap ga <Plug>(EasyAlign)

"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
