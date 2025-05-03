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
          "intelephense",
          "jsonls",
          "eslint",
          "cssls",
          "bashls",
          "sqlls",
          "lemminx"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.intelephense.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.cssls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.sqlls.setup({})
      lspconfig.lemminx.setup({})
    end
  },
}
