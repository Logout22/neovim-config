call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'neomake/neomake'
Plug 'eugen0329/vim-esearch'
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' }
Plug 'Chiel92/vim-autoformat'
Plug 'altercation/vim-colors-solarized'

call plug#end()
