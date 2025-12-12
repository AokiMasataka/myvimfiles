call plug#begin('~/.config/nvim/plugged')

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'yuki-yano/fern-preview.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'antoinemadec/coc-fzf'
call plug#end()

autocmd User CocReady call coc#util#install(['coc-jedi'])
autocmd User CocReady call coc#util#install(['coc-rust-analyzer'])
autocmd User CocReady call coc#util#install(['coc-deno'])


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

" coc
nmap <silent> cd <Plug>(coc-definition)
nmap <silent> ct <Plug>(coc-type-definition)
nmap <silent> ci <Plug>(coc-implementation)
nmap <silent> cr <Plug>(coc-references)
nmap <silent> gr :CocFzfList references<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Pythonの型ヒントなどに色を付ける (例: PymatchTypeをKeywordと同じ色にする)
let g:python_highlight_all = 1
let g:coc_fzf_preview = 'right:50%'
highlight link pythonType Keyword
highlight link pythonBuiltins Function
highlight link pythonPunctuation Operator
