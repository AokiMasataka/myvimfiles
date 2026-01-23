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
          
          local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil

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

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      vim.lsp.config("pyright", {
        capabilities = capabilities,
      })
      vim.lsp.enable("pyright")
      -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- require("lspconfig").pyright.setup({
      --   capabilities = capabilities,
      -- })
    end,
  },
}
