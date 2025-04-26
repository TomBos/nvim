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
          "lua_ls"
        }
      })
    end  
  },
  {
    "neovim/lsp-config",
    config = function()
      local lspconfig = require("lsp-config")
      lspconfig.lua_ls.setup()
    end
  },
}
