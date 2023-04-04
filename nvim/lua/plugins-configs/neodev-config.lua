local neodev_status, neodev = pcall(require, "neodev")
if not neodev_status then
	return
end

neodev.setup({
	override = function(root_dir, library)
		library.enabled = true
		library.plugins = true
	end,
})
