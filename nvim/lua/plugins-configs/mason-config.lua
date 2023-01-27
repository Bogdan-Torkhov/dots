local setup, mason = pcall(require, "mason")
if not setup then
	return
end

local setup2, masonlspconfig = pcall(require, "mason-lspconfig")
if not setup2 then
	return
end

require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,
})
