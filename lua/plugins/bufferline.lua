local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		always_show_bufferline = false,
		diagnostics = "nvim_lsp",
		separator_style = "slant",
	},
})
