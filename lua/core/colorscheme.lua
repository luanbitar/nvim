-- local status, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
local status, _ = pcall(vim.cmd, "colorscheme nordic")

if not status then
	print("Coloscheme not found!")
	return
end

-- onedark
-- local status, onedark = pcall(require, "onedark")
-- if not status then
-- 	return
-- end
-- onedark.load()
