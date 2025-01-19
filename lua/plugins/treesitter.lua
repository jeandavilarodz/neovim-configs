return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "bash", "c", "lua", "html", "markdown", "markdown_inline", "rust" },
        auto_install = true,
        highlight = {
            enable = true,
        },
        indent = { 
            enable = true, 
        },
    },
}

