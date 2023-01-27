local setup, mason = pcall(require, "mason")
if not setup then
	return
end

local setup2, masonlspconfig = pcall(require, "mason-lspconfig")
if not setup2 then
	return
end

local setup3, lspconfig = pcall(require, "lspconfig")
if not setup3 then
	return
end

local setup4, masonnullls = pcall(require, "mason-null-ls")
if not setup4 then
	return
end

mason.setup()

masonlspconfig.setup()

masonnullls.setup({ automatic_installation = true, automatic_setup = true })

masonnullls.setup_handlers()

masonlspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({})
	end,
})
