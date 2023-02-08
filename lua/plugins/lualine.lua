local status, lualine = pcall(require, "lualine")
if not status then
  return;
end

local theme = require("lualine.themes.gruvbox-material")

theme.normal.a.bg = "#FFFFFF"

lualine.setup({
  options = { theme = theme }
})
