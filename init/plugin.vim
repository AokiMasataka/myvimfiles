call plug#begin('~/.config/nvim/plugged')

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'yuki-yano/fern-preview.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:coc_global_extensions = [
    \'@yaegassy/coc-volar',
    \'coc-deno',
    \'coc-tsserver',
    \'coc-rust-analyzer',
    \'coc-pyright'
\]


" Fern preview
function! s:fern_settings() abort
    nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
    nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
    nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
    nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
    autocmd!
    autocmd FileType fern call s:fern_settings()
augroup END

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" coc-volar
au FileType vue let b:coc_root_patterns = ['.git', '.env', 'package.json', 'tsconfig.json', 'jsconfig.json', 'vite.config.ts', 'vite.config.js', 'vue.config.js', 'nuxt.config.ts']