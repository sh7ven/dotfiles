filet indent on

let g:loaded_matchparen=0
se tgc
sy on
se ts=2 | se sw=2 | se ai | se si | se et
se nowrap | se mouse=a
se shm-=S
se rnu
se re=2
se hls
se tm=1000 | se ttm=0
se clipboard=unnamedplus

let g:mapleader = ","
map <leader>n :bnext<CR>
map <leader>p :bprevious<CR>

ru! ftplugin/man.vim

au VimEnter Makefile,*.mk se noet
au VimEnter *.txt, * if expand('%:t') !~ '\.' | se wrap

let g:netrw_browse_split=3
" nn <s-e> <Cmd>let f=input('> ','','file')\|if filereadable(f)\|exe 'tabnew' f\|el\|echom '!'\|en<CR>
nn <s-e> <Cmd>let f=input('> ','','file')\|if filereadable(f)\|exe 'sp' f\|el\|echom '!'\|en<CR>
nn <c-e> :Explore $PWD<CR>

nn <c-m> <Cmd>let m=input('man> ', '') \| exe 'Man 2' m<CR>

hi link Todo Comment
nn qn :nohl<CR>
