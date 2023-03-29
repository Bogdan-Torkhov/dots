require("nvim-treesitter.configs").setup({
	sync_install = { enable = false },
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
	auto_install = { enable = true },
	incremental_selection = { enable = true },
	context_commentstring = { enable = true, enable_autocmd = false },
})
