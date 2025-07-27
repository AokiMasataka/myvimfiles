nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <C-j> 10j
nnoremap <C-k> 10k

nmap <silent><nowait> cd <Plug>(coc-definition)
nmap <silent><nowait> ct <Plug>(coc-type-definition)
nmap <silent><nowait> ci <Plug>(coc-implementation)
nmap <silent><nowait> cr <Plug>(coc-references)

nnoremap ff :Files<CR>
nnoremap <C-r> :Rg<CR>

nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=36<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

nnoremap <silent> K :call ShowDocumentation()<CR>

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert


function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction
