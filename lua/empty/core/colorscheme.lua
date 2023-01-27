-- vim.cmd("colorscheme gruvbox-material")

local status, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
if not status then
  print("Coloscheme not found!")
  return
end
