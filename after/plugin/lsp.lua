local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'clangd',
    'rust_analyzer',
})

local cmp = require('cmp')

lsp.setup_nvim_cmp({
    mapping = lsp.defaults.cmp_mappings({
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                if #cmp.get_entries() > 1 and cmp.get_active_entry() == nil then
                    return cmp.select_next_item({
                        behavior = cmp.SelectBehavior.Insert,
                        count = 0
                    })
                else
                    return cmp.select_next_item({
                        behavior = cmp.SelectBehavior.Insert
                    })
                end
            end
            fallback()
        end,
        ['<S-Tab>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Insert
        }),
        ['<C-space>'] = cmp.mapping.complete(),
    })
})

local ih = require("inlay-hints")

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)

    ih.on_attach(client, bufnr)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
