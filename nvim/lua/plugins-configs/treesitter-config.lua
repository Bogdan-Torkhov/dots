local setup, treesitter = pcall(require, "nvim-treesitter")
if not setup then
	return
end

treesitter.setup({
	ensure_installed = { "all" },
	sync_install = false,
	highlight = true,
	indent = true,
	autotag = true,
	auto_install = true,
})
