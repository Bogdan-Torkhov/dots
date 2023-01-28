local setup, treesitter = pcall(require, "nvim-treesitter")
if not setup then
	return
end

treesitter.setup({
	highlight = { enable = true, disable = {} },
	indent = { enable = true, disable = {} },
	autotag = { enable = true, disable = {} },
	auto_install = { enable = true, disable = {} },
})
