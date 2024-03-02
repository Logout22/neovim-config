let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

execute "source ".s:vimconfigpath."/modules.vim"

" Disable (ancient and buggy) lacheck for TeX documents
" This line could be extended by e.g. proselint, in case it is available.
let g:neomake_tex_enabled_makers = ['chktex']
" Run neomake after every buffer write
fun! RunNeomake()
    if &ft =~ 'c\|cpp\|rust'
        return
    endif
    Neomake
endfun
autocmd BufWritePost * call RunNeomake()

" Tab and indention settings
set smarttab expandtab shiftwidth=4 softtabstop=4 tabstop=4 autoindent
autocmd FileType make set noexpandtab
autocmd FileType c set cindent
autocmd FileType cpp set cindent

" Set leader to ,
let mapleader=","

" Create a mapping for FZF
nnoremap <F4> :FZF<CR>

" Enable smart case-sensitive searches
set ignorecase smartcase

" Make g flag default (g flag in replacements means 'non-greedy' then):
set gdefault

" Configure vim-esearch:
"  - enable regex
let g:esearch = {
            \ 'regex': 1,
            \}

" Disable modelines (security, workflow reasons)
set modelines=0

" Set up solarized colour scheme
set background=light
colorscheme solarized

" Enable mouse navigation
set mouse=ni
