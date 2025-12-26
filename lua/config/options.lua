-- =========================
-- Encoding / file
-- =========================
vim.opt.fileencoding = "utf-8"
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.hidden = true

-- =========================
-- UI
-- =========================
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.wildmenu = true
vim.opt.wildmode = { "list", "longest" }
vim.opt.pumblend = 5

vim.opt.number = true

-- =========================
-- Editor
-- =========================
vim.opt.list = true
vim.opt.listchars = { tab = "| " }

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- =========================
-- Search
-- =========================
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true

-- =========================
-- Backspace
-- =========================
vim.opt.backspace = { "indent", "eol", "start" }

-- =========================
-- Bell
-- =========================
vim.opt.visualbell = true
vim.opt.errorbells = false