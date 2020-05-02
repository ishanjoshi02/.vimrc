" enable syntax highlighting
syntax enable
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set termguicolors
set smartcase
set showmatch
set cursorline
set ignorecase                    
set hlsearch
set noswapfile
set nobackup
set backspace=indent,eol,start
set wildmode=list:longest,full
set runtimepath+=/Users/ishanjoshi/.vim/bundle/neobundle.vim/
let python_highlight_all = 1
map <C-o> :NERDTreeToggle<CR>
set laststatus=2
colorscheme gruvbox
filetype plugin indent on
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:

" Required:
call neobundle#begin(expand('/Users/ishanjoshi/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'itchyny/lightline.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()
" Required:

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Pathogen Packages go here

call pathogen#infect()


