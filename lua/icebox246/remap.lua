-- Open netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Clipboard
vim.keymap.set('n', '<C-y>', '"+y')
vim.keymap.set('v', '<C-y>', '"+y')

-- Make terminal mode usable
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')

-- Line moving
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Format
vim.keymap.set('n', 'TT', function() vim.lsp.buf.format() end)

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Half screen jumping
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
