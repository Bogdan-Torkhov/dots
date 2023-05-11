-- import nvim-cmp plugin safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

-- import luasnip plugin safely
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

-- import lspkind plugin safely
local lspkind_status, lspkind = pcall(require, "lspkind")
if not lspkind_status then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

vim.o.completeopt = "menu,menuone,noselect"

local function border(hl_name)
	return {
		{ "╭", hl_name },
		{ "─", hl_name },
		{ "╮", hl_name },
		{ "│", hl_name },
		{ "╯", hl_name },
		{ "─", hl_name },
		{ "╰", hl_name },
		{ "│", hl_name },
	}
end

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<c-j>"] = cmp.mapping.select_next_item(), -- previous suggestion
		["<c-k>"] = cmp.mapping.select_prev_item(), -- next suggestion
		["<c-b>"] = cmp.mapping.scroll_docs(-4),
		["<c-f>"] = cmp.mapping.scroll_docs(4),
		["<c-space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<c-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = false }),
	}),
	-- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "path" }, -- file system paths
		{ name = "buffer" }, -- text within current buffer
		{ name = "nvim_lua" }, -- lua
		{ name = "nvim_lsp_signature_help" }, -- help for signatures
		{ name = "vsnip" }, -- vs code snippets
	}),
	-- window configuration
	window = {
		completion = {
			-- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			col_offset = -3,
			side_padding = 0,
			border = border("WinSeparator"), -- WinSeparator will look better on transparent bg
		},
		documentation = { border = border("WinSeparator") },
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			local kind = require("lspkind").cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
			})(entry, vim_item)
			local strings = vim.split(kind.kind, "%s", { trimempty = true })
			kind.kind = " " .. (strings[1] or "") .. " "
			kind.menu = "    (" .. (strings[2] or "") .. ")"

			return kind
		end,
	},
})
