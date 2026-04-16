" this a comment
hi clear

if exists("syntax_on")
  sy reset
en

let g:colors_name = "simple-dark"

se bg=dark
hi Normal     guifg=#ffffff               ctermfg=7 ctermbg=0
hi Comment    guifg=#0000ff               ctermfg=5           gui=bold cterm=bold
hi Statement  guifg=#ffffff               ctermfg=7
hi Identifier guifg=#ffffff               ctermfg=7
hi Type       guifg=#ffffff               ctermfg=7
hi PreProc    guifg=#ffffff               ctermfg=7
hi Constant   guifg=#ffffff               ctermfg=7
hi Search     guifg=#000000 guibg=#ffffff ctermfg=0 ctermbg=4 gui=bold cterm=bold
hi String     guifg=#00ff00               ctermfg=11          gui=bold cterm=bold

" C specific 
" hi cComment   guifg=#00fe7a
hi cConstant  guifg=#eeaa00                                   gui=bold cterm=bold
