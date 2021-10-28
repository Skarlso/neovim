local map = require('tools').map

-- map
map('n', '<leader>tl', ':vnew +terminal | setlocal nobuflisted <CR>', {})
map('n', '<leader>tb', ':10new +terminal | setlocal nobuflisted <CR>', {})

-- exit terminal with esc (vim mode in zsh)
map('t', '<Esc>', '<C-\\><C-n>', {})
