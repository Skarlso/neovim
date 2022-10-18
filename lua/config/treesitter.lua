local ts = require('nvim-treesitter.configs')

local languages = {
  'bash', 'bibtex',
  'c', 'cmake', 'commonlisp', 'cpp', 'css',
  'dockerfile', 'dot',
  'elm',
  'go', 'gomod', 'gowork', 'graphql',
  'haskell', 'hcl', 'help', 'html',
  'javascript', 'jsdoc', 'json', 'json5', 'jsonc', 'julia',
  'kotlin',
  'latex', 'lua',
  'make', 'markdown',
  'php', 'python',
  'regex', 'ruby', 'rust',
  'scala', 'scheme', 'scss', 'svelte',
  'toml', 'tsx', 'typescript',
  'vim', 'vue',
  'yaml',
}

ts.setup({
  ensure_installed = languages,
  sync_install = false,
  highlight = {
    enable = true,
    -- disable = {'org'},
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
})
