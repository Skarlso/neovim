local function _map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function _loadVimFile(path)
  local fullPath = vim.fn.stdpath('config') .. '/vimfiles/' .. path .. '.vim'
  vim.cmd('source ' .. fullPath)
end

local M = {
  map = _map,
  loadVimFile = _loadVimFile
}

return M
