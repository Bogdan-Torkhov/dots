local lualine_setup, lualine = pcall(require, "lualine")
if not lualine_setup then
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "dracula",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
	},
	sections = {
		lualine_a = { { "mode", icon = "" } },
		lualine_b = { { "branch", icon = "" }, { "diff" } },
		lualine_c = {
			{
				"filetype",
				icon_only = true,
				separator = "",
				padding = { left = 1, right = 0 },
			},
			{
				"filename",
				path = 1,
				symbols = { modified = "  ", readonly = "", unnamed = "" },
				file_status = true,
			},
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = " ",
				},
			},
			"encoding",
			"filetype",
		},
		lualine_y = { { "progress" } },
		lualine_z = { { "location", icon = "" } },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
		lualine_d = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = { "fzf", "man", "neo-tree", "nvim-tree", "quickfix", "lazy" },
})
