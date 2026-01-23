local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- window
map("n", "sj", "<C-w>j", opts)
map("n", "sk", "<C-w>k", opts)
map("n", "sl", "<C-w>l", opts)
map("n", "sh", "<C-w>h", opts)

map("n", "ss", ":<C-u>sp<CR><C-w>j", opts)
map("n", "sv", ":<C-u>vs<CR><C-w>l", opts)

-- cursor
map("n", "<C-h>", "^", opts)
map("n", "<C-l>", "$", opts)
map("n", "<C-j>", "10j", opts)
map("n", "<C-k>", "10k", opts)

map("n", "<ESC><ESC>", ":nohlsearch<CR>")
