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

" plugin setting
let g:fern#renderer = 'nerdfont'

let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1