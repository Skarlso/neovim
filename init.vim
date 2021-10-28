function LoadRelativeConfig(path)
  exec "source " . stdpath('config') . a:path
endfunction

call LoadRelativeConfig('/boot/general-options.vim')

call plug#begin(stdpath('config') . '/plugged')
  " Dashboard for GitHub {{{
  " Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
  " }}}
  " File browser {{{
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " }}}
  " Better search with fzf {{{
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'junegunn/fzf.vim'
  " Plug 'airblade/vim-rooter'
  " Plug 'junegunn/fzf'
  " Plug '/Users/skarlso/homebrew/bin/fzf'
  " }}}

  " Better search with telescope {{{
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neovim/nvim-lspconfig'
  " }}}

  " Git related {{{
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/committia.vim'
  " }}}
  " Fancy UI {{{
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Themes
  Plug 'arcticicestudio/nord-vim'
  Plug 'mhartington/oceanic-next'
  Plug 'morhetz/gruvbox'
  Plug 'artanikin/vim-synthwave84'
  Plug 'joshdick/onedark.vim'
  Plug 'rakr/vim-one'
  " }}}
  " Icons {{{
  Plug 'ryanoasis/vim-devicons'
  " }}}
  " Language Server {{{
  " Plug 'dense-analysis/ale'
  " }}}
  " Snippets {{{
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  " }}}
  " Markdown zenify {{{
  Plug 'junegunn/limelight.vim'
  Plug 'plasticboy/vim-markdown'
  " }}}
  " Undo {{{
  Plug 'simnalamburt/vim-mundo'
  " }}}
  " Extra Dev Stuff {{{
  Plug 'neomake/neomake'
  Plug 'Shougo/deoplete.nvim'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " }}}
  " Terraform {{{
  Plug 'hashivim/vim-terraform'
  " }}}
  " }}}
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'chuling/vim-equinusocio-material'
  Plug 'prettier/vim-prettier'
  Plug 'sheerun/vim-polyglot'
  Plug 'luochen1990/rainbow'
  " vim-test {{{
  Plug 'vim-test/vim-test'
  Plug 'sebdah/vim-delve'
  " }}}
  " github {{{
  Plug 'pwntester/octo.nvim'
  " }}}
  
  " Syntax {{{
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " }}}

call plug#end()

" let g:ale_linters = {}

" call LoadRelativeConfig('/boot/floating.vim')
call LoadRelativeConfig('/boot/github.vim')
" call LoadRelativeConfig('/boot/fzf.vim')
call LoadRelativeConfig('/boot/nerdtree.vim')
call LoadRelativeConfig('/boot/committia.vim')
call LoadRelativeConfig('/boot/git.vim')
call LoadRelativeConfig('/boot/goyo.vim')
call LoadRelativeConfig('/boot/abbr.vim')
call LoadRelativeConfig('/boot/encrypted.vim')
" call LoadRelativeConfig('/boot/ale.vim')
" call LoadRelativeConfig('/boot/deoplete.vim')
" call LoadRelativeConfig('/boot/coc.vim')
call LoadRelativeConfig('/boot/mundo.vim')
call LoadRelativeConfig('/boot/markdown.vim')
call LoadRelativeConfig('/boot/terminal.vim')
call LoadRelativeConfig('/boot/vim-test.vim')
call LoadRelativeConfig('/boot/telescope.vim')

set path+=**

"let g:equinusocio_material_darker = 1
"let g:equinusocio_material_hide_vertsplit = 1
"set background=dark
"colorscheme gruvbox
"colorscheme synthwave84
"colorscheme onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme oceanicnext
" this theme has a buildin lightline theme, you can turn it on
let g:lightline = {
  \ 'colorscheme': 'oceanicnext',
  \ }

" exit terminal with ESC
tnoremap <Esc> <C-\><C-n>

" REFACTOR AFTER THIS

" TagBar
nnoremap <silent> <leader>pt :TagbarToggle<CR>

"set foldmethod=indent   
"set foldmethod=syntax
"set foldnestmax=10
"set foldenable
"set foldlevel=2
let g:python3_host_prog = '/usr/bin/python3'
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_file_list_command = {
      \ 'markers': {
      \ '.git': 'git ls-files',
      \ },
      \ }
let g:gutentags_ctags_executable = "/usr/local/bin/ctags"
set backupdir=~/.config/nvim/tmp/backup
let &colorcolumn="120"
hi ColorColumn guibg=#2a2a2a ctermbg=0
let g:gutentags_generate_on_new = 1
" let g:gutentags_ctags_extra_args = ['--options=/Users/skarlso/.ctags']
let g:rainbow_active = 1

lua << EOF
require'lspconfig'.gopls.setup{}
require'octo'.setup()
EOF

