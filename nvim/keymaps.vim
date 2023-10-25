" Description: Keymaps

let mapleader = " "

"Go back one directory level
nnoremap <silent>sf :Ex<CR>

"Switch between vim panels
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

"Go to definition 
nnoremap <silent><leader>gd :YcmCompleter GoTo<CR>

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

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
