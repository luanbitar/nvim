local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  hijack_cursor = true,
  view = {
    adaptive_size = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = false,
      show = {
        file = false,
        folder = true,
        folder_arrow = false,
        git = true
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "", -- 
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "",
          deleted = "",
          ignored = "◌",
        },
      },
    }
  }
})
