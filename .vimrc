" enable syntax highlighting
syntax enable
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set termguicolors
set smartcase
set vb
set ruler
set undofile
set fileformat=unix
set bg=dark
set showmatch
set showtabline=2
set cursorline
set ignorecase                    
set hlsearch
set incsearch
set noswapfile
set noundofile
set guifont=font-fantasque-sans-mono
set nobackup
set backspace=indent,eol,start
set wildmode=list:longest,full
set runtimepath+=/Users/ishanjoshi/.vim/bundle/neobundle.vim/
let g:python_highlight_all = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-o> :NERDTreeToggle<CR>
nnoremap H gT
nnoremap L gt
nnoremap <F9> :Yapf<CR>
syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
hi def link myTodo Todo
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

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/Users/ishanjoshi/.vim/bundle/neobundle.vim/
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mindriot101/vim-yapf'
call plug#end()
