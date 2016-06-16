let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

execute "source ".s:vimconfigpath."/modules.vim"

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Run automatic formatting before every buffer write, but not the Vim default
autocmd BufWritePre * :Autoformat
let g:autoformat_autoindent = 0
" Run neomake after every buffer write
autocmd BufWritePost * :Neomake
" Neomake: Enable clang-tidy for C++ as well
let g:neomake_cpp_enabled_makers = ['clang', 'clangtidy']

" Do not remove trailing spaces automatically
let g:autoformat_remove_trailing_spaces = 0

" Tab and indention settings
set smarttab expandtab shiftwidth=4 softtabstop=4 tabstop=4 autoindent
autocmd FileType make set noexpandtab
autocmd FileType c set cindent
autocmd FileType cpp set cindent

" Set leader to ´
let mapleader="´"

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
let g:localvimrc_whitelist=expand("~")."/.*"
let g:localvimrc_sandbox=0



" TODO: Remove as soon as https://github.com/neovim/neovim/issues/4897 is fixed
" See also https://github.com/eugen0329/vim-esearch/issues/2
let g:esearch = extend(get(g:,'esearch', {}), {'backend':'vimproc'}, 'force')
