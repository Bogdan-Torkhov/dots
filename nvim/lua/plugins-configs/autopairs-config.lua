local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
	return
end

autopairs.setup({})
