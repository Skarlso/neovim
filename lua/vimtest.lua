local map = require('tools').map

-- these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl

vim.cmd([[
function! DebugNearest()
  let g:test#go#runner = 'delve'
  TestNearest
  unlet g:test#go#runner
endfunction
]])

map('n', 't<C-n>', ':TestNearest<CR>', {silent = true})
map('n', 't<C-d>', ':call DebugNearest<CR>', {silent = true})
map('n', 't<C-f>', ':TestFile<CR>', {silent = true})
map('n', 't<C-s>', ':TestSuite<CR>', {silent = true})
map('n', 't<C-l>', ':TestLast<CR>', {silent = true})
map('n', 't<C-g>', ':TestVisit<CR>', {silent = true})
map('n', 't<C-b>', ':DlvAddBreakpoint<CR>', {silent = true})
map('n', 't<C-d>', ':DlvRemoveBreakpoint<CR>', {silent = true})
