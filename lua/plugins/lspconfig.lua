return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { 
    'williamboman/mason-lspconfig.nvim',
    'williamboman/mason.nvim',
    'j-hui/fidget.nvim',
    'saghen/blink.cmp',
  },

  opts = {
    servers = {
      zls = {},
      rust_analyzer = {},
    }
  },

  config = function(_, opts)
    -- Configure mason
    require('mason').setup()
    require('mason-lspconfig').setup()
    require('fidget').setup({
      notification = {
        window = {
          winblend = 0,
          border = 'none',
          align = 'bottom',
        }
      }
    })

    -- Make a list of all LSP servers
    local lsp_servers = {}
    for server, _ in pairs(opts.servers) do
      table.insert(lsp_servers, server)
    end

    -- Make sure LSP servers are installed
    require('mason-lspconfig').setup {
      ensure_installed = lsp_servers
    }

    -- Configure blink.cmp auto-complete for each server
    local lspconfig = require('lspconfig')
    local blink = require('blink.cmp')
    for server, config in pairs(opts.servers) do
      config.capabilities = blink.get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end,
}
