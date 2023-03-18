local nvim_tree_setup, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_setup then
	return
end

-- disable netrw
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
nvim_tree.setup({
	diagnostics = {
		enable = false,
		show_on_dirs = false,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = { error = " ", warn = " ", info = " ", hint = " " },
	},
})
