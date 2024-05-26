if vim.g.neovide then
    vim.o.guifont = "FiraCode Nerd Font:h12:#e-antialias:#h-full"
    vim.g.neovide_scroll_animation_length = 0.05
    vim.g.neovide_cursor_trail_size = 0.2

    -- Pasting from clipboard
    vim.keymap.set('n', '<C-S-V>', '"+p')
    vim.keymap.set('v', '<C-S-V>', '"+p')
    vim.keymap.set('i', '<C-S-V>', '<C-R>+')
    vim.keymap.set('c', '<C-S-V>', '<C-R>+')

    -- GUI scaling with keybinds
    vim.api.nvim_set_keymap("n", "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
end

