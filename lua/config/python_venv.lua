local function get_root()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })
  for _, client in ipairs(clients) do
    if client.config.root_dir then
      return client.config.root_dir
    end
  end
  return vim.fn.getcwd()
end

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.py",
  callback = function()
    local root = get_root()
    local venv_python = root .. "/.venv/bin/python"

    if vim.fn.executable(venv_python) == 1 then
      vim.env.VIRTUAL_ENV = root .. "/.venv"
      vim.env.PATH = vim.env.VIRTUAL_ENV .. "/bin:" .. vim.env.PATH
    end
  end,
})
