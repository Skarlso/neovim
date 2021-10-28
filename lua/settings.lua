local map = require('tools').map

vim.cmd([[
if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

filetype plugin on

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
]])


vim.opt.autoindent = true
vim.opt.backspace = {'indent','eol','start'}
vim.opt.complete:remove('i')
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

vim.opt.nrformats:remove('octal')
vim.opt.incsearch = true

vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupcopy = 'yes'

vim.opt.backupdir = vim.env.HOME .. '/.cache/nvim/backup//'
vim.opt.directory = vim.env.HOME .. '/.cache/nvim/swap//'
vim.opt.undodir = vim.env.HOME .. '/.cache/nvim/undo//'

vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamed'
-- meh
vim.opt.clipboard:append('unnamedplus')

vim.opt.mouse = "a"

vim.opt.colorcolumn = "120"
vim.opt.path:append('**')

vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.wildmenu = true

vim.opt.display:append('lastline')
vim.opt.encoding = 'utf-8'
vim.opt.list = true
vim.opt.listchars = {
  tab      = '> ',
  trail    = '.',
  extends  ='>',
  precedes ='<',
  nbsp     = '+',
  eol      = '↲'
}

vim.opt.formatoptions:append('j')

if vim.fn.has('path_extra') == 1 then
  vim.opt_global.tags:remove('./tags')
  vim.opt_global.tags:remove('./tags')
  vim.opt_global.tags:prepend('./tags')
end

vim.opt.autoread = true

if vim.opt.tabpagemax:get() < 50 then
  vim.opt.tabpagemax = 50
end

if vim.opt.history:get() < 1000 then
  vim.opt.history = 1000
end

vim.opt.sessionoptions:remove('options')
--vim.opt.splitbelow = true
--vim.opt.splitright = true

vim.opt.foldmethod = 'syntax'
vim.opt.foldnestmax = 10
vim.opt.foldenable = true
vim.opt.foldlevel = 2

-- let &colorcolumn="80,".join(range(120,999),",")
vim.opt.path:append('**')

-- map
map('n', '<C-n>', ':NERDTreeToggle<CR>', {})
map('n', '<F7>', ':tabnew<CR>', {})
map('v', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>', {})
map('n', '<leader>a', ':Ag <C-R><C-W><CR>' ,{silent = true})
map('i', '<expr><tab>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {})

-- copy paste helper
map('n', '<leader>d', '"_d')
map('x', '<leader>d', '"_d')
map('x', '<leader>p', '"_dP')

-- vim-go settings
vim.g.go_metalinter_command = "golangci-lint"
vim.g.go_metalinter_autosave_enabled = { 'govet' }
vim.g.go_metalinter_autosave = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_format_strings = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_generate_tags = 1
vim.g.go_highlight_string_spellcheck = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_variable_assignments = 1
vim.g.go_highlight_variable_declarations = 1
vim.g.go_rename_command = 'gopls'
vim.g.go_fmt_command = "goimports"
vim.g.go_build_tags = 'integration'
