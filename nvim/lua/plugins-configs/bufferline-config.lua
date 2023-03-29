local bufferline_setup, bufferline = pcall(require, "bufferline")
if not bufferline_setup then
	return
end

bufferline.setup({})
