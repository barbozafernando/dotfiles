lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "c++", "typescript", "json", "go", "rust", "tsx" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
EOF
