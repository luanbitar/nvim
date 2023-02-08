local status, lualine = pcall(require, "lualine")
if not status then
  return;
end

local theme = require "lualine.themes.gruvbox-material"

theme.normal.a.bg = "#FFFFFF"

lualine.setup({
  options = { 
    theme = theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_x = {"filetype"},
    lualine_y = {}
  }
})

