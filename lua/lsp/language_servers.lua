-- Setup lspconfig.
  require("nvim-lsp-installer").setup {
    automatic_installation = true
  }

  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  local langservers = {
    'lua_ls',
    'rust_analyzer',
    'html',
    'cssls',
    'tsserver',
    'intelephense'
  }

  for _, server in ipairs(langservers) do
    require'lspconfig'[server].setup { capabilities = capabilities }
  end
