" base settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set showmatch
set laststatus=2
set wildmenu
set wildmode=list:longest
set pumblend=5

" editor settings
set list
set listchars=tab:\|\
set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

set backspace=indent,eol,start

set visualbell
set noerrorbells
set number

colorscheme habamax
syntax enable


" netrw
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_winsize=80

" plugin setting

let g:fern#renderer = 'nerdfont'
