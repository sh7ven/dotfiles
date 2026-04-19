se tgc
sy on | colo simple-dark
se ts=2 | se sw=2 | se ai | se si | se et
se nowrap | se mouse=a
se shm-=S
se rnu
se clipboard=unnamedplus
se re=1
se hls

se tm=1000
se ttm=0

" vn <leader>y :'<,'>w !wl-copy<CR><CR>
" nn <leader>p :r !wl-paste<CR>
" aug AutoCopy au! | au TextYankPost * sil! cal system('wl-copy', getreg('"')) aug END

filetype plugin indent on

" tabs for Makefile indent
au VimEnter Makefile se noet
au VimEnter *.txt, * if expand('%:t') !~ '\.' | se wrap

let g:netrw_browse_split=3
" nn <s-e> <Cmd>let f=input('> ','','file')\|if filereadable(f)\|exe 'tabnew' f\|el\|echom '!'\|en<CR>
nn <s-e> <Cmd>let f=input('> ','','file')\|if filereadable(f)\|exe 'sp' f\|el\|echom '!'\|en<CR>
nn <c-e> :Explore $PWD<CR>
