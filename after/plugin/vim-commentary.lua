vim.api.nvim_create_autocmd('Filetype', {
    pattern = { 'odin' },
    command = "setlocal commentstring=//%s"
})
