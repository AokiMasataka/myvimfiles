return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- 最優先でロード
    config = function()
      vim.cmd.colorscheme("habamax")
    end,
  },
}