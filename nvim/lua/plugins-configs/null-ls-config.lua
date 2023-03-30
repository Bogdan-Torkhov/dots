local null_ls_setup, null_ls = pcall(require, "null-ls")
if not null_ls_setup then
	return
end

local capabilities_status, capabilities = pcall(require, "vim.lsp.protocol.make_client_capabilities()")
if not capabilities_status then
	return
end

local hover = null_ls.builtins.hover
local code_actions = null_ls.builtins.code_actions
-- for conciseness
local completion = null_ls.builtins.completion -- auto complete
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
capabilities.offsetEncoding = "utf-16"
vim.lsp.protocol.make_client_capabilities()({
	textDocument = { completion = { editsNearCursor = true } },
	offsetEncoding = { "utf-16" },
})
-- configure null_ls
null_ls.setup({
	-- fixing clang-format warning
  on_init = function(clang_format, _)
      clang_format.offset_encoding = 'utf-16'
    end,
  -- setup formatters & linters
	sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		formatting.lua_format,
		formatting.prettierd, -- js/ts formatter
		formatting.stylua, -- lua formatter
		formatting.clang_format.with({ capabilities = capabilities }),
		hover.dictionary,
		diagnostics.eslint_d.with({ -- js/ts linter
			-- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
			condition = function(utils)
				return utils.root_has_file(".eslintrc.json") -- change file extension if you use something else
			end,
		}),
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
