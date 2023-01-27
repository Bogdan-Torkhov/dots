local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	animation = true,
	closable = true,
	icons = true,
	clickable = true,
	icon_separator_active = "▎",
	icon_separator_inactive = "▎",
	icon_close_tab = "",
	icon_close_tab_modified = "●",
	icon_pinned = "車",
	maximum_padding = 0,
	maximum_length = 100,
})
