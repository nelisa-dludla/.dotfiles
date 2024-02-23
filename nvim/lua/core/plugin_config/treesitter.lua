require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "javascript", "html", "c", "lua", "vim", "vimdoc", "query", "go" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
