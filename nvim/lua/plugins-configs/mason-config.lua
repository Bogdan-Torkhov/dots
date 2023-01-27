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

mason.setup()
masonlspconfig.setup()

masonlspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({})
	end,
})
