-- Setup lspconfig.
  require("nvim-lsp-installer").setup {
    automatic_installation = true
  }

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  local langservers = {
    'sumneko_lua',
    'rust_analyzer',
    'html',
    'cssls',
    'tsserver',
    'intelephense'
  }

  for _, server in ipairs(langservers) do
    require'lspconfig'[server].setup { capabilities = capabilities }
  end
