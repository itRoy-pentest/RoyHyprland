-- General
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'} -- menu autocomplete


-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python


-- Ui config
vim.opt.number = true 		        -- show absolute number

vim.opt.cursorline = true           -- highlight cursor line

vim.opt.splitbelow = true           -- open new down split bottom
vim.opt.splitright = true           -- open new reight split bottom

vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI


-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an upper ase is entered


