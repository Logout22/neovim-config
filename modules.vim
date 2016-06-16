call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'critiqjo/lldb.nvim', { 'do': function('DoRemote') }
Plug 'neomake/neomake'
Plug 'eugen0329/vim-esearch'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' }
Plug 'embear/vim-localvimrc'
Plug 'Chiel92/vim-autoformat'

" TODO: Remove as soon as https://github.com/neovim/neovim/issues/4897 is fixed
Plug 'Shougo/vimproc', { 'do': 'make' }

call plug#end()
