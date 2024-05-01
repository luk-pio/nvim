return function()
  require('mason').setup({})
  require('mason-lspconfig').setup({
    ensure_installed = { 'graphql', 'jsonls', 'sqlls', 'bashls' },
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end,
      lua_ls = require('settings.lsp.languages.lua_ls'),
      emmet_language_server = function()
        require('lspconfig').emmet_language_server.setup({
          filetypes = {
            "javascriptreact",
            "typescriptreact",
            "markdown",
            "css",
            "html",
          }
        })
      end,
    }
  })
end
