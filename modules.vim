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
Plug 'vim-scripts/Conque-GDB'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'neomake/neomake'
Plug 'eugen0329/vim-esearch'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '$HOME/.fzf', 'do': './install --all' }
Plug 'embear/vim-localvimrc'

call plug#end()
