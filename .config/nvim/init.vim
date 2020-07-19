call plug#begin(stdpath('data') . '/plugged')

    " Looks
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'ap/vim-css-color'
    
    " Tools
    Plug 'dense-analysis/ale'

    " Wiki
    Plug 'lervag/wiki.vim'
    Plug 'lervag/wiki-ft.vim'

call plug#end()

colorscheme base16-gruvbox-dark-soft
let mapleader = ","
let base16colorspace=256
let $LANG='en' 
let g:lasttab = 1

syntax on 
filetype plugin indent on

set nocompatible
set cursorline
set history=500
set autoread
set so=7
set langmenu=en
set wildmenu
set wildignore=*.o,*~,*.pyc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set encoding=UTF-8
set ruler
set cmdheight=1
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch 
set lazyredraw 
set magic
set showmatch 
set mat=1
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set fileencoding=UTF-8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set number relativenumber
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set clipboard=unnamedplus

map <space> /
map <C-space> ?
map <silent> <leader><cr> :let @/ = ""<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>
map <leader>r  :source ~/.config/nvim/init.vim<cr>

nmap <Leader>tl :exe "tabn ".g:lasttab<CR>

au FocusGained,BufEnter * checktime
au TabLeave * let g:lasttab = tabpagenr()

source $HOME/.config/nvim/yaml.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/wiki.vim
