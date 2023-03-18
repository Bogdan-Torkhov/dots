local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

telescope.setup({
	opts = { defaults = { prompt_prefix = " ", selection_caret = " " } },
	extensions = {
		repo = { subcommand = { argument = { "new", "default", "value" } } },
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		file_browser = { theme = "dracula", hijack_netrw = true },
	},
})
telescope.load_extension("fzf", "repo", "file_browser")
