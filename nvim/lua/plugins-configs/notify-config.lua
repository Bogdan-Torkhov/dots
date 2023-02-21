-- import nvim-cmp plugin safely
local notify_status, notify = pcall(require, "notify")
if not notify_status then
	return
end

notify.setup({ background_colour = "#000000" })
