return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        config = function() end
      },
    },
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "bacon-ls",
        "bacon",
      },
    },
}
