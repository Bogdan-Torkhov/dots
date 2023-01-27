local setup, tree = pcall(require, "nvim-tree")
if not setup then
	return
end

tree.setup()
