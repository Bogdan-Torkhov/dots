local nvim_treesitter_setup, nvim_treesitter = pcall(require, "nvim-treesitter")
if not nvim_treesitter_setup then
	return
end

nvim_treesitter.setup({
	ensure_installed = { "all" },
	sync_install = false,
	highlight = true,
	indent = true,
	autotag = true,
	auto_install = true,
	rainbow = true,
})
