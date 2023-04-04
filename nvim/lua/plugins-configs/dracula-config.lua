local dracula_status, dracula = pcall(require, "dracula")
if not dracula_status then
	return
end

-- theme setup
dracula.setup({
	soft = false,
	transparent = true,
	colors = function(colors)
		return { red = colors.purple, blended_red = colors.blended_purple }
	end,
	callback = function(colors)
		vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextSpaceChar", { fg = colors.purple, bg = "NONE" })
		vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { fg = colors.purple, bg = "NONE" })
	end,
})
