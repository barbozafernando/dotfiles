vim.g.mapleader = " "

vim.keymap.set("i", "fj", "<Esc>", { noremap = true })
vim.keymap.set("t", "fj", "<C-\\><C-n>", { noremap = true })

vim.keymap.set("n", "sf", vim.cmd.Ex, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ev", ":vsplit ~/.config/nvim/init.lua<CR>", { noremap = true })
vim.keymap.set("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })

vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Maintain cursor in the middle while "C-d,C-u"
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Keep copied string in buf even after pasting
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copies sth to SO clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Replace selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
