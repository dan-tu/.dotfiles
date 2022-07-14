local o = vim.o
local g = vim.g
local wo = vim.wo
local bo = vim.bo

-- Global variables and stuff
vim.cmd("colorscheme gruvbox")

-- Global config
o.swapfile = false
o.smartcase = true
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 8
o.sidescrolloff = 30
o.showmatch = true
o.number = true
o.updatetime = 300

-- Window-local config
wo.wrap = false
wo.relativenumber = true
wo.colorcolumn = "80"
wo.cursorline = true

-- Buffer-local config
bo.smartindent = true
bo.tabstop = 4
bo.softtabstop = 4
bo.expandtab = true
bo.shiftwidth = 4
bo.syntax = "ON"
