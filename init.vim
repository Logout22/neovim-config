let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

execute "source ".s:vimconfigpath."/modules.vim"

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Configure Neomake linters
let g:neomake_cpp_enabled_makers = ['clang-tidy']

" Tab and indention settings
set smarttab expandtab shiftwidth=4 softtabstop=4 tabstop=4 autoindent
autocmd FileType make set noexpandtab
autocmd FileType c set cindent
autocmd FileType cpp set cindent

" Opposite to J (Ctrl-J):
nnoremap <C-J> a<CR><ESC>

" Create a mapping for FZF
nnoremap <F4> :FZF<CR>

" Enable smart case-sensitive searches
set ignorecase smartcase

" Make g flag default (g flag in replacements means 'non-greedy' then):
set gdefault

" Disable modelines (security, workflow reasons)
set modelines=0

" Setup local vimrc security
let g:localvimrc_whitelist="/home/munzner/.*"
let g:localvimrc_sandbox=0
