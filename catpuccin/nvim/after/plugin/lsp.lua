local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "clangd", "jdtls", "jedi_language_server", "rust_analyzer", "gopls" },
  handlers = {
    lsp_zero.default_setup,
  },
})

require('java').setup()
require("lspconfig").jdtls.setup({})

require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").jedi_language_server.setup {}
