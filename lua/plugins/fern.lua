return {
  {
    "lambdalisue/fern.vim",
    cmd = { "Fern" },
    keys = {
      {
        "<C-n>",
        function()
          vim.cmd("Fern . -drawer -toggle -width=30")
        end,
        desc = "Toggle fern file explorer",
      },
    },
    dependencies = {
      "yuki-yano/fern-preview.vim",
    },
    config = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "fern",
        callback = function()
          vim.keymap.set(
            "n",
            "p",
            "<Plug>(fern-action-preview:toggle)",
            { buffer = true }
          )
        end,
      })
    end,
  },
}