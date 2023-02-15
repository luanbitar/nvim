local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- gruvbox-material
-- local theme = require("lualine.themes.gruvbox-material")
-- theme.normal.a.bg = "#FFFFFF"

-- onedark
-- local theme = require("lualine.themes.onedark")

-- nordic
local theme = require("lualine.themes.nord")

lualine.setup({
	options = {
		theme = theme,
		-- removing separator
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_x = { "filetype" },
		lualine_y = {},
	},
})
