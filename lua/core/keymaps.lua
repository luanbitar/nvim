vim.g.mapleader = " "

local keymap = vim.keymap -- conciseness

-- general
keymap.set("i", "jk", "<ESC>") -- exit to normal mode using jk
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear seach
keymap.set("n", "x", '"_x') -- prevent to copy when using 'x' to delete
keymap.set("n", "<leader>+", "<C-a>") -- increment integer
keymap.set("n", "<leader>-", "<C-x>") -- decrement integer

-- windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- prev tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize split

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

