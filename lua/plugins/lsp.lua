require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  --确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "gopls",
    "jdtls",
    "pyright",
  }
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["lua_ls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig")["pyright"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig")["gopls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig")["jdtls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
