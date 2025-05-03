vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.o.termguicolors = true
vim.o.mouse = ""
vim.g.mapleader = " "
vim.g.loaded_perl_provider = 0  -- Disable Perl provider warning


-- Nvim package manager
require("plugins.lazy")

-- Color Scheme
require('onedark').load()

-- Telescope (File Search)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Telescope (Live Grep)
vim.keymap.set("n", "<C-e>", builtin.live_grep, {})

-- Neotree (File Explorer)
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal<CR>", {})

-- Lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})


vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
