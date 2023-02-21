local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
	return
end

local mason_lspconfig_setup, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_setup then
	return
end

local lsp_setup, lsp = pcall(require, "lspconfig")
if not lsp_setup then
	return
end

local mason_null_ls_setup, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_setup then
	return
end

mason.setup()

mason_lspconfig.setup()

mason_null_ls.setup({ automatic_installation = true, automatic_setup = true })

mason_null_ls.setup_handlers()

mason_lspconfig.setup_handlers({
	function(server_name)
		lsp[server_name].setup({})
	end,
})
