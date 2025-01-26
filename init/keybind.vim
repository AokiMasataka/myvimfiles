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

nnoremap ff :Files<CR>

nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert
