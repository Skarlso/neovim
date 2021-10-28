vim.g.start_time = vim.fn.reltime()

-- we don't need this during init
vim.opt.shadafile = 'NONE'

local packer = require('packer')

packer.init {
  max_jobs = 10,
  display = {
    open_fn = function()
      return require("packer.util").float {border = "single"}
    end
  },
}

-- Disable some unused built-in Neovim plugins
vim.g.loaded_man = false
vim.g.loaded_gzip = false
vim.g.loaded_netrwPlugin = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false

local modules = {
  'settings',
  'plugins',
  'style',
  'terminal',
  'git',
  'map',
  'vimtest',
  'config.coc',
  'vimfiles'
}

for idx = 1, #modules do
  require(modules[idx])
end

-- REFACTOR AFTER THIS
vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.gutentags_ctags_tagfile = '.tags'
vim.g.gutentags_file_list_command = {
  markers = {
    ['.git'] = 'git ls-files'
  }
}
vim.g.gutentags_ctags_executable = '/usr/local/bin/ctags'
vim.g.rainbow_active = true

-- Set viminfo and restore shadafile
vim.opt.viminfo = "!,'10,\"100,:20,%,n~/.nviminfo"
vim.opt.shadafile = ""

vim.g.end_time = vim.fn.reltime()
