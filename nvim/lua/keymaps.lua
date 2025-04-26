-- NerdTree
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')


-- Vim terminal
local opts = {noremap = true, silent = true}

-- Terminal open Ctrl + t
vim.keymap.set('n', '<C-t>', ':split | terminal<CR>', opts)

-- Auto set terminal
vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    command = 'startinsert'
})

-- Exit clipboard with terminal
vim.keymap.set('t', '<C-o>', '<C-\\><C-n>', opts)

-- Kill terminal window
vim.keymap.set('n', '<C-q>', ':bd!<CR>', opts)



vim.keymap.set('n', '<C-h>', '<C-w>h') -- left
vim.keymap.set('n', '<C-l>', '<C-w>l') -- right
vim.keymap.set('n', '<C-k>', '<C-w>j') -- Up
vim.keymap.set('n', '<C-j>', '<C-w>k') -- Down

-- Tagbar
vim.keymap.set('n', '<C-b>', '<TagbarToggle>')
