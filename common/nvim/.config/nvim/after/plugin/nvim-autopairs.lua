-- Use treesitter to close pairs
local npairs = require("nvim-autopairs")
npairs.setup({
    check_ts = true,
})
