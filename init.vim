let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

execute "source ".s:vimconfigpath."/modules.vim"
