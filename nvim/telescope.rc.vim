" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files hidden=true no_ignore=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
require('telescope').setup { 
  defaults = { 
    file_ignore_patterns = {
      "node_modules", 
      "dist", 
      ".git", 
      "coverage"
    },
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous
      }
    }
  } 
}
