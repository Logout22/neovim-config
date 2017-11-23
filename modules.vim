call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'neomake/neomake'
Plug 'eugen0329/vim-esearch'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' }
Plug 'embear/vim-localvimrc'
Plug 'Chiel92/vim-autoformat'
Plug 'altercation/vim-colors-solarized'
Plug 'cohama/agit.vim'

call plug#end()
