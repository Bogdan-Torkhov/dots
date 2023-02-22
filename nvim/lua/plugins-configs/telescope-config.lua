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
	},
})
require("telescope").load_extension("fzf", "repo")
