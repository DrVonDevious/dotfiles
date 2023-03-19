local remap = require('devious-dev.remap')

require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'marksman',
    'bashls',
    'cssls',
    'ember',
    'emmet_ls',
    'html',
    'jsonls',
    'tsserver',
    'tailwindcss',
  }
})

local on_attach = function(_, _)
  remap.lsp()
end

require('lspconfig').lua_ls.setup({
  on_attach = on_attach
})

require('lspconfig').marksman.setup({
  on_attach = on_attach
})

require('lspconfig').bashls.setup({
  on_attach = on_attach
})

require('lspconfig').cssls.setup({
  on_attach = on_attach
})

require('lspconfig').ember.setup({
  on_attach = on_attach
})

require('lspconfig').emmet_ls.setup({
  on_attach = on_attach
})

require('lspconfig').html.setup({
  on_attach = on_attach
})

require('lspconfig').jsonls.setup({
  on_attach = on_attach
})

require('lspconfig').tsserver.setup({
  on_attach = on_attach
})

require('lspconfig').tailwindcss.setup({
  on_attach = on_attach
})
