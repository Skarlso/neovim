local map = require("tools").map

-- Go
map('n', '<leader>db', ':DlvToggleBreakpoint<CR>', {})
map('n', '<leader>dt', ':DlvToggleTracepoint<CR>', {})
map('n', '<leader>dr', ':DlvDebug<CR>', {})
map('n', '<leader>drt', ':DlvTest<CR>', {})

-- nvimtree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {})

-- tagbar
map('n', '<leader>tt', ':TagbarToggle<CR>', {})

-- Telescope
map('n', '<C-L>', ':Telescope live_grep<CR>', {})
map('n', '<leader>gt', ':Telescope git_status<CR>', {})
map('n', '<leader>cm', ':Telescope git_commits<CR>', {})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {})
map('n', '<leader>fo', ':Telescope oldfiles<CR>', {})
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<C-b>', ':Telescope buffers<CR>', {})

-- misc
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {})
map('n', '<leader>fi', ':Telescope lsp_implementations<CR>', {})
map('n', '<leader>fr', ':Telescope lsp_references<CR>', {})
map('n', '<leader>fc', ':Telescope lsp_code_actions<CR>', {})
map('v', '<leader>fc', ':Telescope lsp_range_code_actions<CR>', {})
map('n', '<leader>tn', ':tabnew<CR>', {})
map('n', '<leader>te', ':tabnext<CR>', {})
map('n', '<leader>tp', ':tabprevious<CR>', {})
