" Description: Keymaps

let mapleader = "\<space>"

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
