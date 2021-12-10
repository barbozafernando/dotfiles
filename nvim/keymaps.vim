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

" vim-multiple-cursor mappings
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
