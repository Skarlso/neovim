local map = require("tools").map

-- Go
map('n', '<leader>db', ':DlvToggleBreakpoint<CR>', {})
map('n', '<leader>dt', ':DlvToggleTracepoint<CR>', {})
map('n', '<leader>dr', ':DlvDebug<CR>', {})
map('n', '<leader>drt', ':DlvTest<CR>', {})

-- nvimtree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {})

-- tagbar
map('n', '<leader>pt', ':TagbarToggle<CR>', {})

-- Telescope
map('n', '<C-L>', ':Telescope live_grep<CR>', {})
map('n', '<leader>gt', ':Telescope git_status<CR>', {})
map('n', '<leader>cm', ':Telescope git_commits<CR>', {})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {})
map('n', '<leader>fo', ':Telescope oldfiles<CR>', {})
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<C-b>', ':Telescope buffers<CR>', {})
map('n', '<leader>r', ':Telescope lsp_references<CR>', {})
map('n', '<leader>i', ':Telescope lsp_implementations<CR>', {})
