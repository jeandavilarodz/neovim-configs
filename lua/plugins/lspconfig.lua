return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { 'saghen/blink.cmp' },

  opts = {
    servers = {
      zls = {},
      bacon_ls = {
        enabled = true,
      },
    }
  },

  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end,
}
