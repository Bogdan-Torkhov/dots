local setup, treesitter = pcall(require, "nvim-treesitter")
if not setup then
	return
end

treesitter.setup({})
