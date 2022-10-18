local cmp = require('cmp')
local cmplsp = require('cmp_nvim_lsp')
local lsp = require('lspconfig')

vim.opt.completeopt = { "menu", "menuone", "noselect" }

cmp.setup({
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    -- Accept currently selected item. Set `select` to `false` to only confirm
    -- explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' },
    { name = 'path' },
  }, {
    { name = 'buffer' },
  })
})

require("cmp_git").setup({
  filetypes = { "gitcommit" },
})


--cmp.setup.cmdline('/', {
--  mapping = cmp.mapping.preset.cmdline(),
--  sources = {
--    { name = 'buffer' },
--  },
--})

--cmp.setup.cmdline(':', {
--  mapping = cmp.mapping.preset.cmdline(),
--  sources = cmp.config.sources({
--    { name = 'path' }
--  }, {
--    { name = 'cmdline' }
--  }),
--})

lsp.gopls.setup {
  capabilities = capabilities,
  init_options = {
    usePlaceholders = true,
  },
}
lsp.pyright.setup { capabilities = capabilities }
lsp.rust_analyzer.setup { capabilities = capabilities }
lsp.hls.setup { capabilities = capabilities }
