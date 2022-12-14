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
o.wrap = false
o.relativenumber = true
o.colorcolumn = "80"
o.cursorline = true

-- Buffer-local config
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true
o.sw = 4
o.syntax = "ON"

-- Github Copilot Mapping
o.copilot_no_tab_map = true
