local setup_saga, saga = pcall(require, "lspsaga")
if not setup_saga then
  return
end

saga.setup({
  scroll_preview = { scroll_down = "<C-f>", next = "<C-b" },
  definition = {
    edit = "<CR>",
  },
})

