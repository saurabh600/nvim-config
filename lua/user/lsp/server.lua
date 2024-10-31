require("mason").setup()
require("mason-lspconfig").setup()
require("neodev").setup({})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- html
lspconfig.html.setup({
  capabilities = capabilities,
})

-- cssls
lspconfig.cssls.setup({
  capabilities = capabilities,
})

-- tsserver
lspconfig.ts_ls.setup({
  capabilities = capabilities,
})

lspconfig.bashls.setup({
  capabilities = capabilities,
})

-- jsonls
lspconfig.jsonls.setup({
  capabilities = capabilities,
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
})

-- eslint
-- lspconfig.eslint.setup({
--   capabilities = capabilities,
-- })

-- prismals
-- lspconfig.prismals.setup({
--   capabilities = capabilities,
-- })

-- emmet_ls
lspconfig.emmet_language_server.setup({
  capabilities = capabilities,
})

-- tailwindcss
-- lspconfig.tailwindcss.setup({
--   capabilities = capabilities,
-- })

-- clangd
lspconfig.clangd.setup({
  cmd = { "clangd", "-header-insertion=never" },
  capabilities = capabilities,
})

-- pyright
lspconfig.pyright.setup({
  capabilities = capabilities,
})

-- gopls
lspconfig.gopls.setup({
  capabilities = capabilities,
})

-- lua_ls
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
        checkThirdParty = false,
      },
    },
  },
})
