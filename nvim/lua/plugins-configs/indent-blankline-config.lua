-- import indent-blankline plugin safely
local indent_blankline_status, indent_blankline = pcall(require, "indent_blankline")
if not indent_blankline_status then
	return
end

indent_blankline.setup({
	-- for example, context is off by default, use this to turn it on
	show_trailing_blankline_indent = false,
	show_current_context = true,
})
