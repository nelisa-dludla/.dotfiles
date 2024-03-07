local lspconfig = require('lspconfig')

lspconfig.clangd.setup{}
lspconfig.pyright.setup{}
lspconfig.emmet_language_server.setup{}
lspconfig.htmx.setup{
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "html", "templ" },
}

lspconfig.gopls.setup{
	settings = {
		['gopls'] = {
			completeUnimported = true,
			usePlaceholders = true,
		},
	},
}
lspconfig.templ.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "templ", "astro", "javascript", "typescript", "react" },
  init_options = { userLanguages = { templ = "html" } },
})
