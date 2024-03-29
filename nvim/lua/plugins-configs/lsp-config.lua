-- import nvim-cmp plugin safely
local lsp_status, lsp = pcall(require, "lspconfig")
if not lsp_status then
	return
end

-- import windows
local windows_status, windows = pcall(require, "lspconfig.ui.windows")
if not windows_status then
	return
end

-- import float-opts
local float_opts_status, float_opts = pcall(require, "utils.float-opts")
if not float_opts_status then
	return
end
-- import capabilities
local capabilities_status, capabilities = pcall(require, "vim.lsp.protocol.make_client_capabilities()")
if not capabilities_status then
	return
end

capabilities.offsetEncoding = { "utf-16" }
vim.lsp.protocol.make_client_capabilities()({
	textDocument = { completion = { editsNearCursor = true } },
	offsetEncoding = { "utf-16" },
})

-- fixing for vim global function not found
lsp.lua_ls.setup({
	settings = {
		Lua = {
			telemetry = { enable = false },
			completion = { callSnippet = "Replace" },
			diagnostics = {
				globals = {
					"vim",
					"describe",
					"it",
					"before_each",
					"after_each",
					"pending",
				},
			},
		},
	},
})

-- rounded completion window
float_opts = {
	focusable = true,
	style = "minimal",
	border = "rounded",
	source = "always",
	header = "",
	prefix = "",
}
windows.default_options = { border = float_opts.border }
-- local opts = { noremap = true, silent = true }
-- vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
-- Enable completion triggered by <c-x><c-o>
--	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

-- Mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
--	local bufopts = { noremap = true, silent = true, buffer = bufnr }
--	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
--	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
--	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
--	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
--	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
--	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
--	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
--	vim.keymap.set("n", "<space>wl", function()
--		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--	end, bufopts)
--	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
--	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
--	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
--	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
--	vim.keymap.set("n", "<space>f", function()
--		vim.lsp.buf.format({ async = true })
--	end, bufopts)
-- end
