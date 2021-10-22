let g:deoplete#enable_at_startup = 1
set completeopt=noselect
" " set completeopt=menuone,menuone
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})
