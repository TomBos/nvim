vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.o.termguicolors = true
vim.o.mouse = ""
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- Nvim package manager
require("config.lazy")

-- Telescope (File Search)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Telescope (Live Grep)
vim.keymap.set("n", "<C-e>", builtin.live_grep, {})

-- Neotree (File Explorer)
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal<CR>", {}) 

