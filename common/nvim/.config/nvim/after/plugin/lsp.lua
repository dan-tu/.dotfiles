local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
    "tsserver",
    "pyright",
    "sumneko_lua",
    "rust_analyzer",
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('rust_analyzer', {
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true
                }
            },
            procMacro = {
                enable = true,
            },
        },
    },
})


local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    -- Starts completion
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
})
-- Disable tab for copilot
cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil
lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I',
    }
})

lsp.on_attach(function (client, bufnr)
    local options = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, options)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, options)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, options)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, options)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, options)
    vim.keymap.set("n", "rn", vim.lsp.buf.rename, options)
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, options)
    vim.keymap.set("n", "<leader>dN", vim.diagnostic.goto_prev, options)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, options)
end)
lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})
