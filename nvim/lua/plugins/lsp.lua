return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "pyright" },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require('blink.cmp').get_lsp_capabilities()
          })
        end,
      }
    })
  end,
}
