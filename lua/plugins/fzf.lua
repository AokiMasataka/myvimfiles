return {
  {
    "junegunn/fzf.vim",
    dependencies = {
      "junegunn/fzf",
    },
    config = function()
      vim.keymap.set("n", "ff", ":Files<CR>")
      vim.keymap.set("n", "fr", ":Rg<CR>")
    end
  },
}