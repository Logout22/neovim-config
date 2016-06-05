let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

execute "source ".s:vimconfigpath."/modules.vim"

" Use deoplete.
let g:deoplete#enable_at_startup = 1
