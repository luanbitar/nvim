local opt = vim.opt -- for conciseness

-- line number
opt.number = true
opt.relativenumber = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search Search
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.scrolloff = 8

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- word config
opt.iskeyword:append("-")
opt.iskeyword:append("_")

-- show whitespaces ⏎¬⇥
opt.listchars = "tab:|  ,trail:~,extends:>,precedes:<,nbsp:·,lead:·,multispace:·"
opt.list = true
