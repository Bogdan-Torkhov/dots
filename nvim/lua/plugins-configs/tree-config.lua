local setup, tree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- disable netrw
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
tree.setup()
