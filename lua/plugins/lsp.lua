return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("pyright", {})
      vim.lsp.enable("pyright")

      vim.lsp.config("rust_analyzer", {})
      vim.lsp.enable("rust_analyzer")

      -- LSP 共通キーマップ（attach 時のみ）
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf, silent = true }

          -- 定義・参照
          vim.keymap.set("n", "cd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "cr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "ci", vim.lsp.buf.implementation, opts)

          -- 情報表示
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

          vim.keymap.set("n", "cp", function()
            local params = vim.lsp.util.make_position_params()
            vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result)
              if result and result[1] then
                vim.lsp.util.preview_location(result[1])
              end
            end)
          end,
          { desc = "Preview definition" }
        )
        end,
      })
    end,
  },
}