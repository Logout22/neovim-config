let s:vimconfigpath=fnamemodify(resolve(expand('<sfile>:p')), ":h")

let g:python_host_prog = "/usr/bin/python2"
let g:python3_host_prog = "/usr/bin/python3"

execute "source ".s:vimconfigpath."/modules.vim"

" Set up deoplete and UltiSnips
let g:deoplete#enable_at_startup = 1
set completeopt=menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'buffer', 'tag', 'ultisnips']

" Use tab as universal completion key
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<TAB>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Close the preview window automatically
let g:SuperTabClosePreviewOnPopupClose = 1

" Run neomake after every buffer write
autocmd BufWritePost * :Neomake

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

" Configure vim-esearch:
"  - enable regex
let g:esearch = {
            \ 'regex': 1,
            \}

" Disable modelines (security, workflow reasons)
set modelines=0

" Setup local vimrc security
let g:localvimrc_whitelist=expand("~")."/.*"
let g:localvimrc_sandbox=0

" Set up solarized colour scheme
set background=dark
colorscheme solarized

" Template for lvimrc, cannot be enabled generally
"" Run automatic formatting before every buffer write
"autocmd BufWritePre * :Autoformat
"" Do not use vim default indention
"let g:autoformat_autoindent = 0
"" Do not remove trailing spaces automatically
"let g:autoformat_remove_trailing_spaces = 0
