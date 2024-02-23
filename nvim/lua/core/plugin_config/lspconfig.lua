local lspconfig = require('lspconfig')

lspconfig.clangd.setup{}
lspconfig.pyright.setup{}
lspconfig.html.setup{}
lspconfig.emmet_language_server.setup{}
lspconfig.htmx.setup{}
lspconfig.gopls.setup{
	settings = {
		['gopls'] = {
			completeUnimported = true,
			usePlaceholders = true,
		},
	},
}
