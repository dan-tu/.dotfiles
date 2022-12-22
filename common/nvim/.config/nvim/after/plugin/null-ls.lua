-- Automatically select null-ls for formatting when available
local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            return client.name == "null-ls"
        end,
        bufnr=bufnr
    })
end

local null_ls = require("null-ls")
local LspFormattingGroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettierd
    },
    on_attach = function(client, bufnr)
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts
        if client.supports_method("textDocument/formatting") then
            -- Remove any previous autocmd groups for this buffer
            vim.api.nvim_clear_autocmds({ group = LspFormattingGroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = LspFormattingGroup,
                buffer = bufnr,
                callback = function()
                    lsp_formatting(bufnr)
                end,
            })
        end
    end,
})
