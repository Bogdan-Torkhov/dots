local nvim_tree_setup, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_setup then
	return
end

-- disable netrw
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
nvim_tree.setup()
