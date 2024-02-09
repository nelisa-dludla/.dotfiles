local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

opt.number = true
opt.relativenumber = true
opt.list = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true
opt.cursorline = true
opt.cursorcolumn = true
opt.swapfile = false
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.splitright = true
opt.splitbelow = true
opt.clipboard:append("unnamedplus")

-- Disable Netrw
-- g.loaded_netrw = 1
-- g.loaded_netrwPlugin = 1

-- Theme
opt.background = "dark"
cmd("colorscheme lipoide")
