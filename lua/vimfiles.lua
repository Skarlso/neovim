function loadVimFile(path)
  local fullPath = vim.fn.stdpath('config') .. '/vimfiles/' .. path .. '.vim'
  vim.cmd('source ' .. fullPath)
end

local modules = {
  'encrypted',
  'coc'
}

for idx = 1, #modules do
  loadVimFile(modules[idx])
end
