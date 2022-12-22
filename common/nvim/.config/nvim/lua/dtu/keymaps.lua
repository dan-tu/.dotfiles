vim.g.mapleader = " "

-- Breakpoints
vim.keymap.set('i', ',', ',<c-g>u', {noremap=true})
vim.keymap.set('i', '.', '.<c-g>u', {noremap=true})
vim.keymap.set('i', '!', '!<c-g>u', {noremap=true})
vim.keymap.set('i', '?', '?<c-g>u', {noremap=true})

-- Line concat
vim.keymap.set('n', 'J', 'mzJ`z', {noremap=true})

-- Center and unfold when searching
vim.keymap.set('n', 'n', 'nzzzv', {noremap=true})
vim.keymap.set('n', 'N', 'Nzzzv', {noremap=true})

-- Copy paste to clipboard
vim.keymap.set('v', '<leader>y', '"+y', {noremap=true})
vim.keymap.set('n', '<leader>p', '"+p', {noremap=true})

-- Quick save
vim.keymap.set('n', '<leader>w', ':w<cr>', {noremap=true})
vim.keymap.set('n', '<leader>q', ':q<cr>', {noremap=true})

-- Misc
vim.keymap.set('n', 'Y', 'y$', {})

-- Clear search when pressing <leader> and space
vim.keymap.set('n', '<leader><space>', ':noh<cr>', {noremap=true})
