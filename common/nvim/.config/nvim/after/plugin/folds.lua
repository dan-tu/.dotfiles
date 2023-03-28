-- Buffers opened via telescope are initially entered in insert mode.
-- This prevents folds from working correctly until the user makes an edit
-- to the file.
-- See https://github.com/nvim-telescope/telescope.nvim/issues/559#issuecomment-1074076011
vim.api.nvim_create_autocmd('BufRead', {
   callback = function()
      vim.api.nvim_create_autocmd('BufWinEnter', {
         once = true,
         command = 'normal! zx'
      })
   end
})
