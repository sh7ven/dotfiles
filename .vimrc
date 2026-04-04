se tgc
sy on
se ts=2 | se sw=2 | se ai | se si | se et
se nowrap | se mouse=a
se shm-=S
se rnu
se clipboard=unnamedplus

" vn <leader>y :'<,'>w !wl-copy<CR><CR>
" nn <leader>p :r !wl-paste<CR>
" aug AutoCopy au! | au TextYankPost * sil! cal system('wl-copy', getreg('"')) aug END

" tabs for Makefile indent
au VimEnter Makefile se noet

let g:netrw_browse_split=3
nn <s-e> <Cmd>let f=input('> ','','file')\|if filereadable(f)\|exe 'sp' f\|el\|echom '!'\|en<CR>
nn <c-e> :Explore $PWD<CR>
