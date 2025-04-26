local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

-- init.lua или другой файл конфигурации

-- Загрузка плагинов через packer
require('packer').startup(function(use)
  use 'neovim/nvim-lspconfig'     -- LSP-конфигурации
  use 'hrsh7th/nvim-cmp'          -- сам плагин автодополнения
  use 'hrsh7th/cmp-nvim-lsp'      -- источник автодополнения от LSP
  use 'hrsh7th/cmp-buffer'        -- источник автодополнения из буфера (опционально)
  -- (Добавьте другие sources, сниппеты и т.д. при необходимости)
end)

-- Настройка LSP-сервера clangd
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').clangd.setup{
  capabilities = capabilities,
}

-- Настройка параметров для nvim-cmp
vim.o.completeopt = 'menu,menuone,noselect'
local cmp = require('cmp')
cmp.setup {
  snippet = {
    expand = function(args)
      -- Без сниппетов (или заполните для вашего сниппет-движка)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>']      = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged },
    keyword_length = 1,
  },
}



require('nvim-autopairs').setup {
  check_ts = true, -- Интеграция с tree-sitter для контекстной работы
  ts_config = {
    lua = { 'string', 'source' },
    cpp = { 'string', 'comment' }, -- Настройка для C++
  },
}

vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')


require('options')
require('keymaps')
require('plugins')
require('colorscheme')
