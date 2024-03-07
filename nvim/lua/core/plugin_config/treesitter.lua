require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "javascript", "html", "c", "lua", "vim", "query", "go", "templ" },
	sync_isntall = false,
	auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
