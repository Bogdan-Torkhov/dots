local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "dracula",
		component_separators = "|",
		section_separators = { left = "|", right = "|" },
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
	},
	sections = {
		lualine_a = { { "mode", icon = "", separator = { left = "" } } },
		lualine_b = {
			{ "branch", icon = "", separator = { left = "" } },
			{ "diff", separator = { right = "" } },
			{ "diagnostics", separator = { right = "" } },
		},
		lualine_c = { { "filename" } },
		lualine_x = {
			{ "encoding", icon = "", separator = { right = "" } },
			"filetype",
		},
		lualine_y = { { "progress", separator = { right = "" } } },
		lualine_z = { { "location", icon = "", separator = { right = "" } } },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = { "fzf", "man", "nvim-tree", "quickfix" },
})
