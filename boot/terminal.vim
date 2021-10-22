" Set login shell for :terminal command so aliases work
set shell=/bin/zsh

" When term starts, auto go into insert mode
autocmd TermOpen * startinsert

" Turn off line numbers etc
autocmd TermOpen * setlocal listchars= nonumber norelativenumber

function! ToggleTerm(cmd)
    if empty(bufname(a:cmd))
        call CreateCenteredFloatingWindow()
        call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
    else
        call DeleteUnlistedBuffers()
    endif
endfunction

function! OnTermExit(job_id, code, event) dict
    if a:code == 0
        call DeleteUnlistedBuffers()
    endif
endfunction

function! DeleteUnlistedBuffers()
    for n in nvim_list_bufs()
        if ! buflisted(n)
            let name = bufname(n)
            if name == '[Scratch]' ||
                  \ match(name, "term://") == 0
                call CleanupBuffer(n)
            endif
        endif
    endfor
endfunction

function! CleanupBuffer(buf)
    if bufexists(a:buf)
        silent execute 'bwipeout! '.a:buf
    endif
endfunction

function! ToggleScratchTerm()
    call ToggleTerm('zsh')
endfunction

function! ToggleLazyGit()
    call ToggleTerm('lazygit')
endfunction

nnoremap <silent> <Leader>s :call ToggleScratchTerm()<CR>
nnoremap <silent> <Leader>' :call ToggleLazyGit()<CR>
