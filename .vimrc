" enable syntax highlighting
syntax enable
set number
set relativenumber
set ts=4
set smartindent
set hidden
set nowrap
set autoindent
set expandtab
set shiftwidth=4
set termguicolors
set smartcase
set vb
set ruler
set undofile
set fileformat=unix
set filetype=on
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
set clipboard=unnamed
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:phpfmt_autosave = 0
let g:highlightedyank_highlight_duration = 1000
map <C-o> :NERDTreeToggle<CR>
nnoremap H gT
nnoremap L gt
nnoremap <F9> :Yapf<CR>
nnoremap <M-j>: resize -2 <CR>
nnoremap <M-k>: resize +2 <CR>
nnoremap <M-h>: vertical resize -2 <CR>
nnoremap <M-l>: vertical resize +2 <CR>
:nmap <space>e :CocCommand explorer<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
hi def link myTodo Todo
hi Function guifg=red
set laststatus=2
filetype plugin indent on
let g:python_highlight_all = 1
colorscheme gruvbox
let g:airline_theme='atomic'
if &compatible
  set nocompatible               " Be iMproved
endif
if !exists('##TextYankPost')
  map y <Plug>(highlightedyank)
endif

" ack.vim --- {{{
" Don't jump to first match
cnoreabbrev Ack Ack!
nnoremap <Leader>/ :Ack!<Space>
" use ripgrep for searching ⚡️
let g:ackprg = 'rg --vimgrep --no-heading --type-not sql --smart-case'
let g:ack_autoclose = 1
let g:ack_use_cword_for_empty_search = 1 "Any empty ack search will search for the work the cursor is on
" }}}

" Project specific settings go here
source ~/.config/nvim/projects.vim

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

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()
" Required:

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
Plug 'mxw/vim-jsx'
Plug 'machakann/vim-highlightedyank'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rainglow/vim'
Plug 'mindriot101/vim-yapf'
Plug 'StanAngeloff/php.vim'
Plug 'voldikss/vim-floaterm', {'do': ':!brew install ranger'}
Plug 'vim-python/python-syntax'
Plug 'beanworks/vim-phpfmt'
Plug 'j-tom/vim-old-hope'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tell-k/vim-autopep8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'mileszs/ack.vim'
call plug#end()
