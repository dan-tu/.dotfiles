local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- Moving lines
map('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true})
map('v', 'K', ":m '>-2<CR>gv=gv", { noremap=true})

-- Breakpoints
map('i', ',', ',<c-g>u', {noremap=true})
map('i', '.', '.<c-g>u', {noremap=true})
map('i', '!', '!<c-g>u', {noremap=true})
map('i', '?', '?<c-g>u', {noremap=true})

-- Line concat
map('n', 'J', 'mzJ`z', {noremap=true})

-- Center and unfold when searching
map('n', 'n', 'nzzzv', {noremap=true})
map('n', 'N', 'Nzzzv', {noremap=true})

-- Git
map('n', '<leader>gc', ':GCheckout<CR>', {noremap=true})
map('n' ,'<leader>gs', ':G<CR>', {})
map('n', '<leader>gkr', ':diffget //3<CR>', {})
map('n', '<leader>gkl', ':diffget //2<CR>', {})

-- Copy paste to clipboard
map('v', '<leader>y', '"+y', {noremap=true})
map('n', '<leader>p', '"+p', {noremap=true})

-- Quick save
map('n', '<leader>w', ':w<cr>', {noremap=true})
map('n', '<leader>q', ':q<cr>', {noremap=true})

-- Misc
map('n', 'Y', 'y$', {})
map('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap=true})

-- Clear search when pressing <leader> and space
map('n', '<leader><space>', ':noh<cr>', {noremap=true})

-- fzf
vim.env.FZF_DEFAULT_OPTS = "--layout=reverse"
map('n', '<leader>ff', ':Telescope find_files<cr>', {noremap=true})
map('n', '<leader>fg', ':Telescope live_grep<cr>', {noremap=true})
map('n', '<leader>fc', ':Telescope current_buffer_fuzzy_find<cr>', {noremap=true})
map('n', '<leader>fb', ':Telescope buffers<cr>', {noremap=true})

-- Copilot
map('i', '<silent><script><expr> <C-m>', ':lua require"copilot".Accept("")', {noremap=true})
