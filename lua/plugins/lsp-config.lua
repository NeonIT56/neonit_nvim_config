return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "csharp_ls",
          "jdtls",
          "html",
          "cssls",
          "somesass_ls",
          "jsonls",
          "quick_lint_js",
          "tsserver",
          "pyright",
          "gopls",
          "markdown_oxide",
          "angularls",
          "slint_lsp",
          "eslint",
          "sqls",
          "bashls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.somesass_ls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.pyright.setup({})
      lspconfig.gopls.setup({})
      lspconfig.markdown_oxide.setup({})
      lspconfig.angularls.setup({})
      lspconfig.slint_lsp.setup({})
      lspconfig.eslint.setup({})
      lspconfig.sqls.setup({})
      lspconfig.bashls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
