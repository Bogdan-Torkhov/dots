local ts_status, ts = pcall(require, "nvim-treesitter.configs")
if not ts_status then
	return
end

local ts_rainbow_status, ts_rainbow = pcall(require, "ts-rainbow")
if not ts_rainbow_status then
	return
end

ts.setup({
	sync_install = { enable = false },
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
	auto_install = { enable = true },
	incremental_selection = { enable = true },
	context_commentstring = { enable = true, enable_autocmd = false },
	reainbow = {
		enable = true,
		-- Which query to use for finding delimiters
		query = "rainbow-parens",
		-- Highlight the entire buffer all at once
		strategy = ts_rainbow.strategy.global,
	},
})
