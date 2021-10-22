if has('autocmd')
  filetype plugin indent on
endif

syntax on
" " set spell

" Save/restore between sessions
set viminfo='10,\"100,:20,%,n~/.nviminfo

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

set autoindent
set backspace=indent,eol,start
set complete-=i
set number
set relativenumber
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

set nrformats-=octal
set incsearch

set backupdir=~/.cache/nvim/backup//
set directory=~/.cache/nvim/swap//
set undodir=~/.cache/nvim/undo//

set termguicolors
set clipboard=unnamed

if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu

set display+=lastline

set encoding=utf-8

" set listchars=tab:>\ ,trail:.,extends:>,precedes:<,nbsp:+,eol:↲
set list

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

set autoread

if &history < 1000
  set history=1000
endif

if &tabpagemax < 50
  set tabpagemax=50
endif

if !empty(&viminfo)
  set viminfo^=!
endif

set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

inoremap <C-U> <C-G>u<C-U>

" vim:set ft=vim et sw=2:

set mouse=a
set cf clipboard+=unnamed
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
nmap <C-n> :NERDTreeToggle<CR>
nmap <F7> :tabnew<CR>
" Ctrl-r for renaming
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <silent> <Leader>a :Ag <C-R><C-W><CR>
let g:tex_flavor = "latex"

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" vim-go settings
let g:go_metalinter_command = "golangci-lint"
let g:go_metalinter_autosave_enabled = ['govet']
let g:go_metalinter_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_rename_command = 'gopls'
let g:go_fmt_command = "goimports"
let g:go_build_tags = 'integration'

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
" nnoremap <Leader>i :GoImplements <CR>
" nnoremap <Leader>c :GoCallers <CR>
" nnoremap <Leader>r :GoReferrers <CR>

" Pasting and cutting helper
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP
