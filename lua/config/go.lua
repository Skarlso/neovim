local map = require('tools').map

vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_format_strings = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_generate_tags = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_string_spellcheck = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_variable_assignments = 1
vim.g.go_highlight_variable_declarations = 1

vim.g.go_auto_type_info = 1
vim.g.go_highlight_trailing_whitespace_error = 1
vim.g.go_fmt_command = 'goimports'
vim.g.go_doc_keywordprg_enabled = 0

vim.g.go_fmt_experimental = 1

vim.g.go_debug_windows = {
  vars = "leftabove 40vnew",
  goroutines = "rightbelow 10new",
  out = "botright 3new",
}

--require('go').setup({
--  dap_debug_keymap = true,
--  dap_debug_gui = true,
--  dap_debug = true,
--})

-- autocmd
vim.cmd([[
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
autocmd FileType go nmap <silent> goi :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

autocmd FileType go vmap jtc :'<'> !quicktype -l go --just-types --top-level Converted<CR>
autocmd FileType go nmap jtc :read !pbpaste \| quicktype -l go --just-types --top-level Converted<CR>
]])

-- map
map('n', '<leader>db', ':DlvToggleBreakpoint<CR>', {})
map('n', '<leader>dt', ':DlvToggleTracepoint<CR>', {})
map('n', '<leader>dr', ':DlvDebug<CR>', {})
map('n', '<leader>drt', ':DlvTest<CR>', {})

