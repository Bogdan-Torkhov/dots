-- import indent-blankline plugin safely
local ibl_status, ibl = pcall(require, "ibl")
if not ibl_status then
	return
end

ibl.setup({
	-- for example, context is off by default, use this to turn it on
	whitespace = { remove_blankline_trail = true },
	scope = { enabled = true },
	exclude = {
		filetypes = { "dashboard", "lspinfo", "lazy" },
		buftypes = { "terminal", "prompt", "nofile", "help" },
	},
})
