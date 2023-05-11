local dracula_status, dracula = pcall(require, "dracula")
if not dracula_status then
	return
end

-- fix dashboard strange line
vim.g.indent_blankline_filetype_exclude = {
	"dashboard",
	"lspinfo",
	"packer",
	"checkhealth",
	"help",
	"man",
	"NvimTree",
}
-- theme setup
dracula.setup({
	soft = false,
	transparent = "full",
	saturation = { enabled = false, amount = 10 },
	colors = function(colors)
		return { red = colors.purple, blended_red = colors.blended_purple }
	end,
	callback = function(colors)
		vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextSpaceChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.bgdark, bg = colors.bgdark })
		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = colors.bgdark })
		vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = colors.bg })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.bgdark, bg = colors.bgdark })
		vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = colors.fg, bg = colors.comment })
		vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = colors.purple })
	end,
	override = function(colors)
		return {
			CmpItemAbbrMatch = { fg = "NONE" },
			CmpItemAbbrMatchFuzzy = { fg = "NONE" },
			CmpItemKindText = { reverse = true },
			CmpItemKindMethod = { reverse = true },
			CmpItemKindFunction = { reverse = true },
			CmpItemKindConstructor = { reverse = true },
			CmpItemKindField = { reverse = true },
			CmpItemKindVariable = { reverse = true },
			CmpItemKindClass = { reverse = true },
			CmpItemKindInterface = { reverse = true },
			CmpItemKindModule = { reverse = true },
			CmpItemKindProperty = { reverse = true },
			CmpItemKindUnit = { reverse = true },
			CmpItemKindValue = { reverse = true },
			CmpItemKindEnum = { reverse = true },
			CmpItemKindKeyword = { reverse = true },
			CmpItemKindSnippet = { reverse = true },
			CmpItemKindColor = { reverse = true },
			CmpItemKindFile = { reverse = true },
			CmpItemKindReference = { reverse = true },
			CmpItemKindFolder = { reverse = true },
			CmpItemKindEnumMember = { reverse = true },
			CmpItemKindConstant = { reverse = true },
			CmpItemKindStruct = { reverse = true },
			CmpItemKindEvent = { reverse = true },
			CmpItemKindOperator = { reverse = true },
			CmpItemKindTypeParameter = { reverse = true },
			CmpItemKindBorder = { fg = colors.bgdark, bg = colors.bgdark },
		}
	end,
})
