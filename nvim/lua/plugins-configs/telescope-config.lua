local setup, telescope = pcall(require, "telescope")
if not setup then
	return
end

telescope.setup({
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
