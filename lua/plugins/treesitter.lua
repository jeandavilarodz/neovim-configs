return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPost", "BufWritePost", "BufNewFile"},
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "bash", "c", "lua", "html", "markdown", "markdown_inline", "rust", "zig" },
        auto_install = true,
        highlight = {
            enable = true,
        },
        indent = { 
            enable = true, 
        },
    },
}

