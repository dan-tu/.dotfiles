local builtin = require('telescope.builtin')
vim.env.FZF_DEFAULT_OPTS = "--layout=reverse"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {noremap=true})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {noremap=true})
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {noremap=true})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {noremap=true})
vim.keymap.set('n', '<leader>gc', builtin.git_branches, {noremap=true})


require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous"
            }
        },
        layout_config = {
            horizontal = {
                prompt_position = "top",
                width = 0.7,
                height = 0.6
            }
        },
        sorting_strategy = "ascending"
    }
})

